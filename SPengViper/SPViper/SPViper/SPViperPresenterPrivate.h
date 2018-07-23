//
//  SPViperPresenterPrivate.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPViperPresenter.h"

@protocol SPViperWireframe,SPViperView,SPViperInteractor;

@protocol SPViperPresenterPrivate <SPViperPresenter>

- (id<SPViperWireframe>)wireframe;
- (void)setWireframe:(id<SPViperWireframe>)wireframe;
- (void)setView:(id<SPViperView>)view;

- (id<SPViperInteractor>)interactor;

- (void)setInteractor:(id<SPViperInteractor>)interactor;

@end

/*
 @protocol SPViperInteractor;
 @protocol SPViperInteractorPrivate <SPViperInteractor>
 - (void)setEventHandler:(id)eventHandler;
 - (void)setDataSource:(id)dataSource;
 @end
 */
