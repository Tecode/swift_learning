//
//  SceneDelegate.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/20.
//

#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    
    // 将根视图控制器设置为Scene的根视图控制器
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithFrame:windowScene.coordinateSpace.bounds];
    self.window.windowScene = windowScene;
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    //    可以进行push路由的组件
    ViewController *viewController = [[ViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    //    UIViewController *controller01 = [[UIViewController alloc] init];
    navigationController.view.backgroundColor = [UIColor whiteColor];
    navigationController.tabBarItem.title = @"首页";
    navigationController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    navigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/home_selected@2x.png"];
    
    UIViewController *controller02 = [[UIViewController alloc] init];
    controller02.view.backgroundColor = [UIColor purpleColor];
    controller02.tabBarItem.title = @"视频";
    controller02.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    controller02.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/video_selected@2x.png"];
    
    UIViewController *controller03 = [[UIViewController alloc] init];
    controller03.view.backgroundColor = [UIColor orangeColor];
    controller03.tabBarItem.title = @"推荐";
    controller03.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
    controller03.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/like_selected@2x.png"];
    
    UIViewController *controller04 = [[UIViewController alloc] init];
    controller04.view.backgroundColor = [UIColor systemPinkColor];
    controller04.tabBarItem.title = @"我的";
    controller04.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    controller04.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/page_selected@2x.png"];
    
    [tabBarController setViewControllers:@[navigationController,controller02,controller03,controller04]];
    
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
