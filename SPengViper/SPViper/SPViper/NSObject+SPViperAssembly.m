//
//  NSObject+SPViperAssembly.m
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import "NSObject+SPViperAssembly.h"
#import "SPViperViewPrivate.h"
#import "SPViperPresenterPrivate.h"
#import "SPViperInteractorPrivate.h"
#import "SPViperWireframePrivate.h"
#import "SPViperRouter.h"
@implementation NSObject (SPViperAssembly)
+ (void)assembleViperForView:(id<SPViperViewPrivate>)view
                   presenter:(id<SPViperPresenterPrivate>)presenter
                  interactor:(id<SPViperInteractorPrivate>)interactor
                   wireframe:(id<SPViperWireframePrivate>)wireframe
                      router:(id<SPViperRouter>)router
{
NSParameterAssert([view conformsToProtocol:@protocol(SPViperViewPrivate)]);
NSParameterAssert([presenter conformsToProtocol:@protocol(SPViperPresenterPrivate)]);
NSParameterAssert([wireframe conformsToProtocol:@protocol(SPViperWireframePrivate)]);
NSParameterAssert([router conformsToProtocol:@protocol(SPViperRouter)]);
NSParameterAssert([interactor conformsToProtocol:@protocol(SPViperInteractorPrivate)]);
 
    NSAssert3(interactor.eventHandler == nil, @"Interactor (%@)' eventHandler (%@) already exists when assemble viper for new eventHandler", interactor, interactor.eventHandler, presenter);
    NSAssert3(interactor.dataSource == nil, @"Interactor (%@)'s dataSource (%@) already exists when assemble viper for new dataSource", interactor, interactor.dataSource,presenter);
    interactor.eventHandler = presenter;
    interactor.dataSource = presenter;
    
     NSAssert3(wireframe.view == nil, @"Wireframe (%@)'s view (%@) already exists when assemble viper for new view", wireframe, wireframe.view,view);
    
    wireframe.view = view;
    wireframe.router = router;
    
    NSAssert3(presenter.interactor == nil, @"Presenter (%@)'s interactor (%@) already exists when assemble viper for new interactor", presenter, presenter.interactor,interactor);
    NSAssert3(presenter.view == nil, @"Presenter (%@)'s view (%@) already exists when assemble viper for new view", presenter, presenter.view,view);
    NSAssert3(presenter.wireframe == nil, @"Presenter (%@)'s wireframe (%@) already exists when assemble viper for new router", presenter, presenter.wireframe,self);
    
    presenter.interactor = interactor;
    presenter.view = view;
    presenter.wireframe = wireframe;
    
    if ([view respondsToSelector:@selector(viewDataSource)] &&
        [view respondsToSelector:@selector(setViewDataSource:)]) {
        NSAssert3(view.viewDataSource == nil, @"View (%@)'s viewDataSource (%@) already exists when assemble viper for new viewDataSource", view, view.viewDataSource,presenter);
        view.viewDataSource = presenter;
    }
    NSAssert3(view.eventHandler == nil, @"View (%@)'s eventHandler (%@) already exists when assemble viper for new eventHandler", view, view.eventHandler,presenter);
    view.eventHandler = presenter;
}
@end
