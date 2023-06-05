//
//  VideoCoverCollectionViewCell.m
//  app-oc
//
//  Created by 昊轩 on 2023/6/4.
//

#import "VideoCoverCollectionViewCell.h"
#import "VideoPlayer.h"
#import "VideoToolbar.h"

@interface VideoCoverCollectionViewCell()
@property(nonatomic, strong, readwrite) UIImageView *coverImage;
@property(nonatomic, strong, readwrite) UIImageView *playButton;
@property(nonatomic, copy, readwrite) NSString *videoUrl;
@property(nonatomic, copy, readwrite) VideoToolbar *toolbar;
@end

@implementation VideoCoverCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:({
            _coverImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height - VideoToolbarHeight)];
            _coverImage;
        })];
        [_coverImage addSubview:({
            _playButton = [[UIImageView alloc] initWithFrame:CGRectMake((frame.size.width-50)/2, (frame.size.height - 50 - VideoToolbarHeight)/2, 50, 50)];
            _playButton.image = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
            _playButton;
        })];
        
        [self addSubview:({
            _toolbar = [[VideoToolbar alloc] initWithFrame:CGRectMake(0, _coverImage.bounds.size.height, frame.size.width, VideoToolbarHeight)];
            _toolbar;
        })];
        
        UITapGestureRecognizer *buttonTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handlerPlay)];
        [self addGestureRecognizer: buttonTap];
    }
    return self;
}

- (void) handlerPlay {
    [[VideoPlayer player] playWithVideoUrl:_videoUrl attachView: _coverImage];
}

- (void)layoutWithVideoCoverUrl:(NSString *)videoCoverUrl videoUrl:(NSString *)videoUrl
{
    _coverImage.image = [UIImage imageNamed:videoCoverUrl];
    _videoUrl = videoUrl;
    [_toolbar layoutWithModel: nil];
}



@end
