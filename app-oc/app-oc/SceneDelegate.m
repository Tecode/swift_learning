//
//  SceneDelegate.m
//  app-oc
//
//  Created by 昊轩 on 2023/4/20.
//

#import "SceneDelegate.h"
#import "HomeViewController.h"
#import "controller/VideoViewController.h"
#import "controller/RecommendeViewController.h"

@interface SceneDelegate ()<UITabBarControllerDelegate>

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
    HomeViewController *viewController = [[HomeViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabBarController];
    
    //    UIViewController *controller01 = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.tabBarItem.title = @"首页";
    viewController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/home_selected@2x.png"];
    
    UIViewController *controller02 = [[VideoViewController alloc] init];
    
    UIViewController *controller03 = [[RecommendeViewController alloc] init];
    
    UIViewController *controller04 = [[UIViewController alloc] init];
    controller04.view.backgroundColor = [UIColor systemPinkColor];
    controller04.tabBarItem.title = @"我的";
    controller04.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    controller04.tabBarItem.selectedImage = [UIImage imageNamed:@"icon.bundle/page_selected@2x.png"];
    
    [tabBarController setViewControllers:@[viewController,controller02,controller03,controller04]];
    
    //    tabBar切换时触发
    tabBarController.delegate = self;
    
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
}

//    tabBar切换时触发
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    NSLog(@"tabBarController切换了");
    return YES;
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
