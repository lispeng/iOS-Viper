//
//  SPDetailListInteractor.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/7.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SPViperInteractor.h>
#import "SPDetailListInteractorInput.h"
@class LSPModel;
@interface SPDetailListInteractor : NSObject<SPViperInteractor,SPDetailListInteractorInput>
/**
 *<#annotation#>
 */
@property (nonatomic , strong) LSPModel  *model;

/**
 *<#annotation#>
 */
@property (nonatomic , weak) id  dataSource;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) id  eventHandler;

- (LSPModel *)getDetailModel;

@end
