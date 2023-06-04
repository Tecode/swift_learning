//
//  VideoCoverCollectionViewCell.m
//  app-oc
//
//  Created by 昊轩 on 2023/6/4.
//

#import "VideoCoverCollectionViewCell.h"
#import <AVFoundation/AVFoundation.h>

@interface VideoCoverCollectionViewCell()
@property(nonatomic, strong, readwrite) UIImageView *coverImage;
@property(nonatomic, strong, readwrite) UIImageView *playButton;
@property(nonatomic, copy, readwrite) NSString *videoUrl;
@property(nonatomic, strong, readwrite) AVPlayerLayer *playerLayer;
@property(nonatomic, strong, readwrite) AVPlayerItem *videoItem;
@property(nonatomic, strong, readwrite) AVPlayer *player;
@end

@implementation VideoCoverCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:({
            _coverImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
            _coverImage;
        })];
        [_coverImage addSubview:({
            _playButton = [[UIImageView alloc] initWithFrame:CGRectMake((frame.size.width-50)/2, (frame.size.height-50)/2, 50, 50)];
            _playButton.image = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
            _playButton;
        })];
        UITapGestureRecognizer *buttonTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handlerPlay)];
        [self addGestureRecognizer: buttonTap];
        //        发布订阅
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handlerEnd) name:AVPlayerItemDidPlayToEndTimeNotification object:nil];
    }
    return self;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [_videoItem removeObserver:self forKeyPath:@"status"];
    [_videoItem removeObserver:self forKeyPath:@"loadedTimeRanges" context:nil];
}

- (void)layoutWithVideoCoverUrl:(NSString *)videoCoverUrl videoUrl:(NSString *)videoUrl
{
    _coverImage.image = [UIImage imageNamed:videoCoverUrl];
    _videoUrl = videoUrl;
}

- (void) handlerPlay
{
    NSURL *url = [NSURL URLWithString:_videoUrl];
    
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
    _playerLayer.frame = _coverImage.bounds;
    [_coverImage.layer addSublayer: _playerLayer];
    NSLog(@"play");
}

#pragma make - 视频播放结束
- (void)handlerEnd {
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
