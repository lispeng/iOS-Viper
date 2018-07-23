//
//  SPDetailListModule.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/6.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPDetailListModule.h"
#import <SPViper.h>
#import "SPDetailListViewController.h"
#import "SPDetailListPresenter.h"
#import "SPDetailListInteractor.h"
#import "SPDetailListWireframe.h"
#import "SPRouter.h"
@implementation SPDetailListModule

+ (UIViewController *)buildControllerWithModel:(LSPModel *)model
{
    SPDetailListViewController *detailVC = [[SPDetailListViewController alloc] init];
    [self buildView:detailVC WithModel:model];
    return detailVC;
}
+ (void)buildView:(id<SPViperView>)view WithModel:(LSPModel *)model
{
    SPDetailListPresenter *presenter = [[SPDetailListPresenter alloc] init];
    SPDetailListInteractor *interactor = [[SPDetailListInteractor alloc] init];
    interactor.model = model;
    id<SPViperWireframePrivate>wireframe = [(id)[SPDetailListWireframe alloc] init];
    SPRouter *router = [[SPRouter alloc] init];
    [self assembleViperForView:(id<SPViperViewPrivate>)view
                     presenter:(id<SPViperPresenterPrivate>)presenter
                    interactor:(id<SPViperInteractorPrivate>)interactor
                     wireframe:(id<SPViperWireframePrivate>)wireframe
                        router:(id<SPViperRouter>)router];
}
@end
