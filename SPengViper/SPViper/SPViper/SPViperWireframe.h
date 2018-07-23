//
//  SPViperWireframe.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SPViperView;

@protocol SPViperWireframe <NSObject>
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly, weak) id<SPViperView> view;

@end

