//
//  HomeTableViewCell.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/24.
//

#import "HomeTableViewCell.h"

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
            self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 300, 50)];
            self.titleLabel.font = [UIFont systemFontOfSize: 16];
            self.titleLabel.textColor = [UIColor blackColor];
            self.titleLabel;
        })];
        
        [self.contentView addSubview:({
            self.sourcelLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 50, 14)];
            self.sourcelLabel.font = [UIFont systemFontOfSize: 12];
            self.sourcelLabel.textColor = [UIColor grayColor];
            self.sourcelLabel;
        })];
        
        [self.contentView addSubview:({
            self.commentLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 80, 50, 20)];
            self.commentLabel.font = [UIFont systemFontOfSize: 12];
            self.commentLabel.textColor = [UIColor grayColor];
            self.commentLabel;
        })];
        
        [self.contentView addSubview:({
            self.timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(160, 80, 50, 20)];
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
        
        //        新增一个按钮
        [self.contentView addSubview:({
            self.deleteButton = [[UIButton alloc] initWithFrame:CGRectMake(240, 70, 50, 30)];
            self.deleteButton.backgroundColor = [UIColor redColor];
            [self.deleteButton setTitle:@"确定" forState:UIControlStateNormal];
            [self.deleteButton setTitle:@"取消" forState:UIControlStateHighlighted];
            [self.deleteButton addTarget:self action:@selector(handleButtonClick) forControlEvents:UILayoutPriorityDefaultHigh];
            self.deleteButton;
        })];
    }
    return self;
}

- (void) layoutTableViewCell {
    self.titleLabel.text = @"即刻学习iOS开发";
    
    self.sourcelLabel.text = @"即刻时间";
    [self.titleLabel sizeToFit];
    
    self.commentLabel.text = @"666评论";
    [self.commentLabel sizeToFit];
    self.commentLabel.frame = CGRectMake(self.sourcelLabel.frame.origin.x + self.commentLabel.frame.size.width + 15, self.sourcelLabel.frame.origin.y, self.commentLabel.frame.size.width, self.commentLabel.frame.size.height);
    
    self.timeLabel.text = @"三分钟前";
    [self.timeLabel sizeToFit];
    self.timeLabel.frame = CGRectMake(self.commentLabel.frame.origin.x + self.commentLabel.frame.size.width + 15, self.sourcelLabel.frame.origin.y, self.timeLabel.frame.size.width, self.timeLabel.frame.size.height);
    //    设置右侧图片
    self.rightImageView.image = [UIImage imageNamed:@"icon.bundle/icon.png"];
    
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
