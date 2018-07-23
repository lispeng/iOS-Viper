
//
//  SPMainListWireframe.m
//  SPengViper
//
//  Created by lisipeng on 2018/5/29.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPMainListWireframe.h"
#import <SPViperWireframePrivate.h>
#import <SPViperRouter.h>
#import "SPMainListWireframeInput.h"
#import "SPMainListRouter.h"
#import "SPDetailListModule.h"
#import "LSPModel.h"
#import "SPViperView.h"
@interface SPMainListWireframe()<SPViperWireframePrivate>
/**
 *<#annotation#>
 */
@property (nonatomic , weak) id<SPViperView>  view;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPMainListRouter>  router;

@end

@implementation SPMainListWireframe
- (void)pushViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated
{
    LSPModel *model = [[LSPModel alloc] init];
    UIViewController *detailVC = [SPDetailListModule buildControllerWithModel:model];
    [[self.router class] pushViewController:detailVC fromViewController:self.view.routeSource animated:animated];
    
}
- (void)pushViewControllerWithModel:(LSPModel *)model FromViewController:(UIViewController *)source animated:(BOOL)animated
{
    UIViewController *detailVC = [SPDetailListModule buildControllerWithModel:model];
    [[self.router class] pushViewController:detailVC fromViewController:self.view.routeSource animated:animated];
}
- (void)popViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
}
@end
