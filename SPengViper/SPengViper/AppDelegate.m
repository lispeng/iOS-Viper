//
//  AppDelegate.m
//  SPengViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import "AppDelegate.h"
#import "SPMainViewController.h"
#import "SPmainListModuleBuilder.h"
#import "SPMainRequest.h"
#import "UIApplication+SPRouter.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
 //   SPMainViewController *mainVC = [[SPMainViewController alloc] init];
    SPMainRequest *service = [[SPMainRequest alloc] init];
    UIViewController *rooterVC = [SPmainListModuleBuilder viewControllerWithListService:service router:(id<SPMainListRouter>)application.sp_router];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:rooterVC];
    
    
    
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
