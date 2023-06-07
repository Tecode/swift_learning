//
//  VideoPlayer.m
//  app-oc
//
//  Created by 昊轩 on 2023/6/5.
//

#import "VideoPlayer.h"
#import <AVFoundation/AVFoundation.h>


@interface VideoPlayer()
@property(nonatomic, strong, readwrite) AVPlayerLayer *playerLayer;
@property(nonatomic, strong, readwrite) AVPlayerItem *videoItem;
@property(nonatomic, strong, readwrite) AVPlayer *player;
@end

@implementation VideoPlayer
+ (VideoPlayer *)player
{
    static VideoPlayer *player;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        player = [[VideoPlayer alloc] init];
    });
    return player;
}

- (void)playWithVideoUrl:(NSString *)videoUrl attachView:(UIView *)attachView
{
    [self handlerEnd];
    
    NSURL *url = [NSURL URLWithString:videoUrl];
    
    AVAsset *asset = [AVAsset assetWithURL:url];
    _videoItem = [AVPlayerItem playerItemWithAsset:asset];
    
    //    获取时长
    //    CMTime duration = _videoItem.duration;
    //    CGFloat videoDuration = CMTimeGetSeconds(duration);
    //    KVO
    [_videoItem addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:nil];
    [_videoItem addObserver:self forKeyPath:@"loadedTimeRanges" options:NSKeyValueObservingOptionNew context:nil];
    _player = [AVPlayer playerWithPlayerItem: _videoItem];
    [_player addPeriodicTimeObserverForInterval:CMTimeMake(1, 1) queue:dispatch_get_main_queue() usingBlock:^(CMTime time) {
        NSLog(@"播放进度 %@",@(CMTimeGetSeconds(time)));
    }];
    _playerLayer = [AVPlayerLayer playerLayerWithPlayer:_player];
    _playerLayer.frame = attachView.bounds;
    [attachView.layer addSublayer: _playerLayer];
    NSLog(@"play");
    //        发布订阅
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlerEnd) name:AVPlayerItemDidPlayToEndTimeNotification object:nil];
}

#pragma make - 视频播放结束
- (void)handlerEnd {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    [_videoItem removeObserver:self forKeyPath:@"status"];
    [_videoItem removeObserver:self forKeyPath:@"loadedTimeRanges" context:nil];
    NSLog(@"end");
    [_playerLayer removeFromSuperlayer];
    _videoItem = nil;
    _player = nil;
}

#pragma make - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"status"]) {
        if (((NSNumber *) [change objectForKey:NSKeyValueChangeNewKey]).integerValue == AVPlayerItemStatusReadyToPlay) {
            [_player play];
        }
    } else if ([keyPath isEqualToString:@"loadedTimeRanges"]){
        NSLog(@"缓冲：%@", [change objectForKey:NSKeyValueChangeNewKey]);
    }
}

@end
