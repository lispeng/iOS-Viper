//
//  SPViperViewEventHandle.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol SPViperViewEventHandler<NSObject>

@optional
- (void)handlerViewReady;
- (void)handlerViewRemoved;
- (void)handlerViewWillAppear:(BOOL)animated;
- (void)handlerViewDidAppear:(BOOL)animated;
- (void)handlerViewWillDisappear:(BOOL)animated;
- (void)handlerViewDidDisappear:(BOOL)animated;
- (void)handlerViewDidLoad;
@end

