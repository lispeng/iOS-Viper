//
//  SPViperViewPrivate.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPViperView.h"
@protocol SPViperViewEventHandler;

@protocol SPViperViewPrivate<SPViperView>
- (id<SPViperViewEventHandler>)eventHandler;
- (void)setEventHandler:(id<SPViperViewEventHandler>)eventHandler;

@optional
- (id)viewDataSource;
- (void)setViewDataSource:(id)viewDataSource;
- (void)setRouteSource:(UIViewController *)routeSource;

@end

