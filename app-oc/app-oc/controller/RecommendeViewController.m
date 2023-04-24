//
//  RecommendeViewController.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/24.
//

#import "RecommendeViewController.h"

@interface RecommendeViewController ()<UIScrollViewDelegate, UIGestureRecognizerDelegate>

@end

@implementation RecommendeViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor redColor];
        self.tabBarItem.title = @"推荐";
        self.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
        self.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame: self.view.bounds];
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 4, self.view.bounds.size.height);
    NSArray *colorArrry = @[[UIColor systemPinkColor], [UIColor greenColor], [UIColor orangeColor], [UIColor blueColor]];
    scrollView.delegate = self;
    for (int index = 0; index < 4; index ++) {
        [scrollView addSubview:({
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(scrollView.bounds.size.width * index, 0, scrollView.bounds.size.width, scrollView.bounds.size.height)];
            view.backgroundColor = [colorArrry objectAtIndex:index];
            //            给view添加手势，让页面可以点击输出结果
            [view addSubview:({
                UIView *innerView = [[UIView alloc] initWithFrame:CGRectMake((view.frame.size.width - 100)/2, (view.frame.size.width -100)/2, 100, 100)];
                innerView.backgroundColor = [UIColor whiteColor];
                UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleViewCLick)];
                [innerView addGestureRecognizer:tap];
                tap.delegate = self;
                innerView;
            })];
            view;
        })];
    }
    scrollView.pagingEnabled = YES;
    //    展示水平滚动条
    scrollView.showsHorizontalScrollIndicator = NO;
    //    展示垂直滚动条
    scrollView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:scrollView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //    NSLog(@"ScrollView 滚动");
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    NSLog(@"开始拖拽");
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"完成拖拽");
}

- (void) handleViewCLick
{
    NSLog(@"innerView 被点击");
}

// UIGestureRecognizerDelegate 是否需要响应手势
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return YES;
}

@end
