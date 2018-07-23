//
//  SPmainListModuleBuilder.m
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPmainListModuleBuilder.h"
#import <SPViper.h>
#import "SPMainViewController.h"
#import "SPMainListVeiwPresenter.h"
#import "SPMianListInteractor.h"
#import "SPMainListWireframe.h"
#import <SPViperViewPrivate.h>
#import <SPViperRouter.h>
#import "SPMainListRouter.h"
#import "SPMainListInteractorInput.h"
@implementation SPmainListModuleBuilder
+ (UIViewController *)viewControllerWithListService:(id<SPMainListDataService>)service router:(id<SPMainListRouter>)router
{
    SPMainViewController *view = [[SPMainViewController alloc] init];
    
    [self buildView:(id<SPViperViewPrivate>)view mainListService:service router:router];
    return view;
}
+ (void)buildView:(id<SPViperViewPrivate>)view mainListService:(id<SPMainListDataService>)service router:(id<SPMainListRouter>)router
{
    SPMainListVeiwPresenter *presenter = [[SPMainListVeiwPresenter alloc] init];
    SPMianListInteractor *interactor = [[SPMianListInteractor alloc] initWithMainListDataService:service];
    interactor.eventHandler = presenter;
    interactor.dataSource = presenter;
    
    id<SPViperWireframePrivate> wireframe = (id)[[SPMainListWireframe alloc] init];
    wireframe.view = view;
    wireframe.router = router;
    
    [(id<SPViperPresenterPrivate>)presenter setView:view];
    [(id<SPViperPresenterPrivate>)presenter setWireframe:wireframe];
    [(id<SPViperPresenterPrivate>)presenter setInteractor:interactor];
    
    view.eventHandler = presenter;
    view.viewDataSource = presenter;
}
@end
