//
//  ViewController.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/20.
//

#import "ViewController.h"
#import "view/CustomView.h"

@interface ViewController ()

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
    [self.view addSubview:({
        UILabel *label =  [[UILabel alloc] init];
        label.text = @"hello world";
        [label sizeToFit];
        label.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
        label;
    })];
    
    //    设置一个红色方形的View
    [self.view addSubview: ({
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(100.0, 100.0, 100.0, 100.0);
        view.backgroundColor = [UIColor redColor];
        view;
    })];
    
    //    设置一个绿色方形的View
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(150.0, 150.0, 100.0, 100.0);
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview: view];
    
    //    自定义有生命周期的view
    [self.view addSubview:({
        CustomView *customView = [[CustomView alloc] init];
        customView.frame = CGRectMake(200.0, 200.0, 100.0, 100.0);
        customView.backgroundColor = [UIColor blueColor];
        customView;
    })];
}


@end
