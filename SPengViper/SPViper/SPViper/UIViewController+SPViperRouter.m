//
//  UIViewController+SPViperRouter.m
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import "UIViewController+SPViperRouter.h"

@implementation UIViewController (SPViperRouter)
- (BOOL)SP_isAppRootViewController
{
    NSAssert([UIApplication sharedApplication].delegate.window.rootViewController, @"Can't find rootViewController");
    return [UIApplication sharedApplication].delegate.window.rootViewController == self;
}
- (BOOL)SP_isRemoving
{
    UIViewController *destination = (UIViewController *)self;
    UIViewController *node = destination;
    
    while (node) {
        if (node.isMovingFromParentViewController || (!node.parentViewController && !node.presentationController && ![node SP_isAppRootViewController])) {
            return YES;
        }else if (node.isBeingDismissed)
        {
            return YES;
        }else
        {
            node = node.parentViewController;
            continue;
        }
        break;
    }
    return NO;
}
@end
