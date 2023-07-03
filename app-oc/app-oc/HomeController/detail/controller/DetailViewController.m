//
//  DetailViewController.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/24.
//

#import "DetailViewController.h"
#import <Webkit/Webkit.h>

@interface DetailViewController ()<WKNavigationDelegate>

@end

@implementation DetailViewController

- (void)dealloc
{
    [self.webview removeObserver:self forKeyPath:@"estimatedProgress"];
}

- (instancetype)initWithUrl:(NSString *)url
{
    self = [super init];
    if (self) {
        self.loadUrl = url;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:({
        self.webview = [[WKWebView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, self.view.frame.size.height)];
        [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString: self.loadUrl]]];
        self.webview.navigationDelegate = self;
        [self.webview addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
        self.webview;
    })];
    //    加载进度条
    [self.view addSubview:({
        self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 88, self.view.frame.size.width, 10)];
        self.progressView;
    })];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation
{
    NSLog(@"页面加载完成");
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    self.progressView.progress = self.webview.estimatedProgress;
    NSLog(@"加载进度：%f", self.webview.estimatedProgress);
}

@end
