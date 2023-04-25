//
//  ViewController.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/20.
//

#import "ViewController.h"
#import "view/CustomView.h"
#import "view/HomeTableViewCell.h"
#import "controller/DetailViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    NSLog(@"ViewController初始化");
    return  self;
}

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
    UITableView *tableView = [[UITableView alloc] initWithFrame: self.view.bounds];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //    复用回收tabViewCell
    HomeTableViewCell *tabViewCell = [tableView dequeueReusableCellWithIdentifier: @"id"];
    if (!tabViewCell){
        tabViewCell = [[HomeTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
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

@end
