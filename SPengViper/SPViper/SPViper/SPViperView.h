//
//  SPViperView.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SPViperViewEventHandler;

@protocol SPViperView<NSObject>

- (nullable UIViewController *)routeSource;
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly, strong) id<SPViperViewEventHandler> eventHandler;

@optional
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly, strong) id viewDataSource;

@end
