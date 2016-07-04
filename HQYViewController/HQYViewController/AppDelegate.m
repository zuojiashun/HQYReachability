//
//  AppDelegate.m
//  选项卡控制器的底层实现
//
//  Created by 江城程序猿 on 16/7/3.
//  Copyright © 2016年 江城程序猿. All rights reserved.
//

#import "AppDelegate.h"
#import "HQYTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    HQYTabBarController *tabBarVc = [[HQYTabBarController alloc] init];
    
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor orangeColor];
    vc1.title = @"第一个控制器";
    [tabBarVc addChildViewController:vc1];

    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor blueColor];
    vc2.title = @"第二个控制器";
    [tabBarVc addChildViewController:vc2];
    /*
     UITabBarController *tabBarVc = [[UITabBarController alloc] init];
     [tabBarVc addChildViewController:vc1];
     [tabBarVc addChildViewController:vc2];
     */
    
    self.window.rootViewController = tabBarVc;

    [self.window makeKeyAndVisible];
   
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
