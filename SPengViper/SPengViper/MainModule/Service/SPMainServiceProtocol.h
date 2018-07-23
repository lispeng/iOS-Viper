//
//  SPMainServiceProtocol.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol SPMainServiceOutput;
@protocol SPMainServiceProtocol <NSObject>
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPMainServiceOutput>  interactor;
@optional
- (void)fetchMainListDataSuccessWithArray:(NSArray *)listArray;
- (void)fetchListDataFormatIsError;
- (void)fetchListDataIsEmpty;
- (void)fetchListDataError;

- (void)fetchAllListData;

- (NSArray *)getListArray;
@end
