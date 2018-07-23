//
//  SPMainRequest.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPMainListDataService.h"
@protocol SPMainServiceProtocol;
@protocol SPMainServiceOutput;
@protocol SPMainRequestDelegate<NSObject>
@optional
- (void)requestMainListDataSuccess;

@end
@class LSPModelFrame;
@interface SPMainRequest : NSObject<SPMainListDataService,SPMainServiceProtocol>

/**
 *<#annotation#>
 */
@property (nonatomic , weak) id<SPMainRequestDelegate>  delegate;
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly ,strong) NSArray<LSPModelFrame *>  *listArr;
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPMainServiceOutput>  interactor;

- (void)fetchAllListData;

- (NSArray *)getListArray;

@end
