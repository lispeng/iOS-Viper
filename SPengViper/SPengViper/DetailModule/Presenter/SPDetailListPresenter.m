//
//  SPDetailListPresenter.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/7.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPDetailListPresenter.h"
#import <SPViperPresenterPrivate.h>
#import <SPViperView.h>
#import "SPDetailListInteractor.h"
#import "SPDetailListInteractorInput.h"
#import "SPDetailListWireframe.h"
@interface SPDetailListPresenter()<SPViperPresenterPrivate>
/**
 *<#annotation#>
 */
@property (nonatomic , weak) id<SPViperView>  view;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPViperInteractor,SPDetailListInteractorInput>  interactor;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id  wireframe;

@end

@implementation SPDetailListPresenter

- (void)handlerViewReady
{
    
}
- (void)handlerViewWillAppear:(BOOL)animated
{
    
}
- (void)handlerViewDidAppear:(BOOL)animated
{
    
}
- (void)handlerViewDidLoad
{
    
}
- (CGRect)layoutDetailMainView
{
    return [self.interactor mainViewFrame];
}
- (LSPModel *)getMainViewMdoel
{
    return [self.interactor getDetailModel];
}

@end
