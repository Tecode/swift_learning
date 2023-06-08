//
//  HomeTableViewCell.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/24.
//

#import "HomeTableViewCell.h"
#import "../model/ListItem.h"
#import "SDWebImage.h"

@interface HomeTableViewCell ()

@property(nonatomic, strong, readwrite) UILabel *titleLabel;
@property(nonatomic, strong, readwrite) UILabel *sourcelLabel;
@property(nonatomic, strong, readwrite) UILabel *commentLabel;
@property(nonatomic, strong, readwrite) UILabel *timeLabel;
@property(nonatomic, strong, readwrite) UIImageView *rightImageView;
@property(nonatomic, strong, readwrite) UIButton *deleteButton;

@end

@implementation HomeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(nullable NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:({
            self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 270, 50)];
            //            self.titleLabel.backgroundColor = [UIColor redColor];
            self.titleLabel.font = [UIFont systemFontOfSize: 16];
            self.titleLabel.textColor = [UIColor blackColor];
            self.titleLabel.numberOfLines = 2;
            self.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
            self.titleLabel;
        })];
        
        [self.contentView addSubview:({
            self.sourcelLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 60, 14)];
            self.sourcelLabel.font = [UIFont systemFontOfSize: 12];
            self.sourcelLabel.textColor = [UIColor grayColor];
            self.sourcelLabel;
        })];
        
        [self.contentView addSubview:({
            self.commentLabel = [[UILabel alloc] initWithFrame:CGRectMake(130, 80, 50, 20)];
            self.commentLabel.font = [UIFont systemFontOfSize: 12];
            self.commentLabel.textColor = [UIColor grayColor];
            self.commentLabel;
        })];
        
        [self.contentView addSubview:({
            self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(190, 80, 50, 20)];
            self.timeLabel.font = [UIFont systemFontOfSize: 12];
            self.timeLabel.textColor = [UIColor grayColor];
            self.timeLabel;
        })];
        
        //        设置右侧图片
        [self.contentView addSubview:({
            self.rightImageView = [[UIImageView alloc] initWithFrame:CGRectMake(300, 14, 70, 70)];
            //            self.rightImageView.backgroundColor = [UIColor redColor];
            self.rightImageView.contentMode = UIViewContentModeScaleAspectFill;
            self.rightImageView;
        })];
        
        //        删除按钮
        //        [self.contentView addSubview:({
        //            self.deleteButton = [[UIButton alloc] initWithFrame:CGRectMake(240, 70, 50, 30)];
        //            self.deleteButton.backgroundColor = [UIColor redColor];
        //            [self.deleteButton setTitle:@"确定" forState:UIControlStateNormal];
        //            [self.deleteButton setTitle:@"取消" forState:UIControlStateHighlighted];
        //            _deleteButton.layer.cornerRadius = 10;
        //            _deleteButton.layer.masksToBounds = YES;
        //            _deleteButton.layer.borderColor = [UIColor grayColor].CGColor;
        //            _deleteButton.layer.borderWidth = 2;
        //            [self.deleteButton addTarget:self action:@selector(handleButtonClick) forControlEvents:UILayoutPriorityDefaultHigh];
        //            self.deleteButton;
        //        })];
    }
    return self;
}

- (void) layoutTableViewCellWithItem:(ListItem *) listItem {
    self.titleLabel.text = listItem.title;
    
    self.sourcelLabel.text = listItem.authorName;
    [self.titleLabel sizeToFit];
    
    self.commentLabel.text = @"66评论";
    [self.commentLabel sizeToFit];
    self.commentLabel.frame = CGRectMake(self.sourcelLabel.frame.origin.x + self.commentLabel.frame.size.width + 15, self.sourcelLabel.frame.origin.y, self.commentLabel.frame.size.width, self.commentLabel.frame.size.height);
    
    self.timeLabel.text = listItem.date;
    [self.timeLabel sizeToFit];
    self.timeLabel.frame = CGRectMake(self.commentLabel.frame.origin.x + self.commentLabel.frame.size.width + 15, self.sourcelLabel.frame.origin.y, self.timeLabel.frame.size.width, self.timeLabel.frame.size.height);
    //    设置右侧图片
    //    self.rightImageView.image = [UIImage imageNamed:@"icon.bundle/icon.png"];
    //    主线线程会阻塞导致页面滑动卡顿
    //    UIImage *image = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: listItem.thumbnailUrl]]];
    //    self.rightImageView.image = image;
    //    图片下载的任务放到子线程避免卡顿
    //    if (@available(iOS 10.0, *)) {
    //        NSThread *downloadThread = [[NSThread alloc] initWithBlock:^{
    //            UIImage *image = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: listItem.thumbnailUrl]]];
    //            self.rightImageView.image = image;
    //        }];
    //
    //        downloadThread.name = @"downloadThread";
    //        [downloadThread start];
    //    } else {
    //        // Fallback on earlier versions
    //    }
    //    使用子线程进行加载
    //    dispatch_queue_global_t downloadQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    //    dispatch_queue_main_t mainQueue = dispatch_get_main_queue();
    //    //    listItem.thumbnailUrl的图片地址不对，暂时换成了一个固定的网络地址
    //    dispatch_async(downloadQueue, ^{
    //        UIImage *image = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: @"https://img0.baidu.com/it/u=4162443464,2854908495&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1685984400&t=f90364c63f4a345d8048dc6e19f1f0da"]]];
    //        //        回到主线程
    //        dispatch_async(mainQueue, ^{
    //            self.rightImageView.image = image;
    //        });
    //    });
    // 根据屏幕尺寸自适应图片尺寸
    __unused UIImage *searchIcon = [UIImage imageNamed: @"SearchIcon"];
    //    使用SDWebImage进行图片加载
    [self.rightImageView sd_setImageWithURL: [NSURL URLWithString: @"https://img0.baidu.com/it/u=4162443464,2854908495&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1685984400&t=f90364c63f4a345d8048dc6e19f1f0da"] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        NSLog(@"图片加载完成");
    }];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void) handleButtonClick
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(homeTableViewCell:clickDeleteButton:)]){
        [self.delegate homeTableViewCell:self clickDeleteButton:self.deleteButton];
    }
}

@end
