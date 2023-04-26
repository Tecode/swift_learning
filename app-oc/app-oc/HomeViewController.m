//
//  ViewController.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/20.
//

#import "HomeViewController.h"
#import "view/CustomView.h"
#import "view/HomeTableViewCell.h"
#import "controller/DetailViewController.h"
#import "view/DeleteCellVIew.h"

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate, HomeTableCellDelegate>
@property (atomic, strong, readwrite) UITableView *tabelView;
@property (atomic, strong, readwrite) NSMutableArray *listData;
@end


@implementation HomeViewController

# pragma mark 初始化方法
- (instancetype)init {
    self = [super init];
    if (self) {
        _listData = @[].mutableCopy;
        for (int index = 0; index < 20; index++) {
            [_listData addObject:@(index)];
        }
    }
    NSLog(@"ViewController初始化");
    return  self;
}

# pragma mark 动画函数
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
};

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
};

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
};

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
};

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    hello world
    //    [self.view addSubview:({
    //        UILabel *label =  [[UILabel alloc] init];
    //        label.text = @"hello world";
    //        [label sizeToFit];
    //        label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    //        label;
    //    })];
    
    //    设置一个红色方形的View
    //    [self.view addSubview: ({
    //        UIView *view = [[UIView alloc] init];
    //        view.frame = CGRectMake(100.0, 100.0, 100.0, 100.0);
    //        view.backgroundColor = [UIColor redColor];
    //        view;
    //    })];
    //
    //    //    设置一个绿色方形的View
    //    UIView *view = [[UIView alloc] init];
    //    view.frame = CGRectMake(150.0, 150.0, 100.0, 100.0);
    //    view.backgroundColor = [UIColor greenColor];
    //    [self.view addSubview: view];
    //
    //    //    自定义有生命周期的view
    //    [self.view addSubview:({
    //        CustomView *customView = [[CustomView alloc] init];
    //        customView.frame = CGRectMake(200.0, 200.0, 100.0, 100.0);
    //        customView.backgroundColor = [UIColor blueColor];
    //        //    点击绿色块跳转页面
    //        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]  initWithTarget: self action:@selector(pushController)];
    //        [customView addGestureRecognizer:tapGesture];
    //        customView;
    //    })];
    
    
    //    列表
    _tabelView = [[UITableView alloc] initWithFrame: self.view.bounds];
    _tabelView.dataSource = self;
    _tabelView.delegate = self;
    [self.view addSubview:_tabelView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _listData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    复用回收tabViewCell
    HomeTableViewCell *tabViewCell = [tableView dequeueReusableCellWithIdentifier: @"id"];
    if (!tabViewCell){
        tabViewCell = [[HomeTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
        tabViewCell.delegate = self;
    }
    [tabViewCell layoutTableViewCell];
    //    tabViewCell.textLabel.text = [NSString stringWithFormat:@"主标题%ld", indexPath.row + 1];
    //    tabViewCell.detailTextLabel.text = @"副标题";
    //    tabViewCell.imageView.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    return tabViewCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewController *viewController = [[DetailViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = [NSString stringWithFormat: @"%ld", indexPath.row];
    [self.navigationController pushViewController: viewController animated:YES];
    NSLog(@"OK");
}

//- (void) pushController
//{
//    UIViewController *viewControoler = [[UIViewController alloc] init];
//    viewControoler.navigationItem.title = @"内容";
//    viewControoler.view.backgroundColor = [UIColor whiteColor];
//    viewControoler.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题" style:UIBarButtonItemStylePlain target:self action:nil];
//
//    [self.navigationController pushViewController:viewControoler animated:YES];
//}
- (void)homeTableViewCell: (UITableViewCell *) tableViewCell clickDeleteButton:(UIButton *)deleteButton{
    DeleteCellVIew *_deleteView = [[DeleteCellVIew alloc] initWithFrame: self.view.frame];
    CGRect rect = [tableViewCell convertRect:deleteButton.frame fromView:nil];
    __weak typeof(self) weekSelf = self;
    [_deleteView showDeleteViewFromPoint:rect.origin clickBlock:^{
        __strong typeof(self) strongSelf = weekSelf;
        NSLog(@"关闭回调");
        [strongSelf.listData removeLastObject];
        [strongSelf.tabelView deleteRowsAtIndexPaths:@[[strongSelf.tabelView indexPathForCell:tableViewCell]] withRowAnimation:UITableViewRowAnimationAutomatic];
    }];
}
@end
