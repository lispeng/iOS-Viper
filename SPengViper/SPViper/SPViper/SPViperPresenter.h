//
//  SPViperPresenter.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPViperViewEventHandler.h"

@protocol SPViperView;

@protocol SPViperPresenter <SPViperViewEventHandler>
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly, weak) id<SPViperView>  view;

@end

