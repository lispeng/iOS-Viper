//
//  SPMianListInteractor.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SPViperInteractor.h>
#import "SPMainListInteractorInput.h"
#import "SPMainServiceOutput.h"
@protocol SPMainListDataService;
@protocol SPMainListViewDataSource;
@interface SPMianListInteractor : NSObject<SPViperInteractor,SPMainListInteractorInput,SPMainServiceOutput>
/**
 *<#annotation#>
 */
@property (nonatomic , weak) id<SPMainListViewDataSource>  dataSource;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) id  eventHandler;
- (void)loadAllMainListData;
- (instancetype)initWithMainListDataService:(id<SPMainListDataService>)service;
- (NSArray *)fetchArrayList;
@end
