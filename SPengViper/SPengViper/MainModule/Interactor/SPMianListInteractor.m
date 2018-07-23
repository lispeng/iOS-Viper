//
//  SPMianListInteractor.m
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPMianListInteractor.h"
#import <SPViperInteractorPrivate.h>
#import "SPMainListDataService.h"
#import "LSPModelFrame.h"
#import "SPMainServiceProtocol.h"
#import "SPMainListViewDataSource.h"
@interface SPMianListInteractor()<SPViperInteractorPrivate>
/**
 *<#annotation#>
 */
@property (nonatomic , strong) id<SPMainServiceProtocol>  listService;

@end

@implementation SPMianListInteractor
- (instancetype)initWithMainListDataService:(id<SPMainServiceProtocol>)service
{
    if (self = [super init]) {
        service.interactor = self;
        _listService = service;
    }
    return self;
}
- (void)loadAllMainListData
{
    [self.listService fetchAllListData];
}
- (void)requestData:(id)responseObject
{
    NSArray *listArr = (NSArray *)responseObject;
    [self.dataSource refreshMainListCellWithArray:listArr];
}
- (void)requestError:(NSError *)error
{
    
}


- (void)fetchListDataFormatIsError
{
  //  [self.listService loadErrorPage];
}
- (void)fetchListDataIsEmpty
{
  //  [self.listService loadEmptyPage];
}
- (void)fetchListDataError
{
   //  [self.listService loadErrorPage];
}
@end
