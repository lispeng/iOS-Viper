//
//  SPViperInteractor.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SPViperInteractor <NSObject>
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly, weak) id  dataSource;
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly, weak) id  eventHandler;
@end

