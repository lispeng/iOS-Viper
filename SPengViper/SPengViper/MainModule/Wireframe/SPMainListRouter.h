//
//  SPMainListRouter.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SPViperRouter.h>
@protocol SPMainListRouter <SPViperRouter>
+ (void)pushViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated;
+ (void)popViewController:(UIViewController *)viewController animated:(BOOL)animated;
+ (void)presentViewController:(UIViewController *)viewController fromViewController:(UIViewController *)source animated:(BOOL)animated completion:(void (^ __nullable)(void))completion;
+ (void)dismissViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^ __nullable)(void))completion;
+ (UIViewController *)currentViewController;
@end
