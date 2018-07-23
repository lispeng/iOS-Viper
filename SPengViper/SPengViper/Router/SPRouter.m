//
//  SPRouter.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPRouter.h"

@implementation SPRouter
+ (void)pushViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated
{
    [source.navigationController pushViewController:destination animated:animated];
}
+ (void)popViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [viewController.navigationController popViewControllerAnimated:animated];
}
+ (void)presentViewController:(UIViewController *)viewController fromViewController:(UIViewController *)source animated:(BOOL)animated completion:(void (^ __nullable)(void))completion
{
    [source presentViewController:viewController animated:animated completion:completion];
}
+ (void)dismissViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^ __nullable)(void))completion
{
    [viewController dismissViewControllerAnimated:animated completion:completion];
}

@end
