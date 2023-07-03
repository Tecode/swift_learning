//
//  DetailViewController.h
//  app-oc
//
//  Created by 昊轩 on 2023/4/24.
//

#import <UIKit/UIKit.h>
#import <Webkit/Webkit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (strong, nonatomic, readwrite) WKWebView *webview;
@property (strong, nonatomic, readwrite) UIProgressView *progressView;
@property (copy, nonatomic, readwrite) NSString *loadUrl;

- (instancetype)initWithUrl:(NSString *)url;
@end

NS_ASSUME_NONNULL_END
