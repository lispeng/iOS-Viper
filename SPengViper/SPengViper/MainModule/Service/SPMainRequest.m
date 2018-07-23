//
//  SPMainRequest.m
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPMainRequest.h"
#import "LSPModel.h"
#import "LSPModelFrame.h"
#import "SPMainServiceProtocol.h"
#import "SPMainServiceOutput.h"
@interface SPMainRequest()
/**
 *<#annotation#>
 */
@property (nonatomic , strong) NSMutableArray  *listArray;


@end

@implementation SPMainRequest
- (NSMutableArray *)listArray
{
    if (nil == _listArray) {
        _listArray = [NSMutableArray array];
    }
    return _listArray;
}

- (void)fetchAllListData
{
    NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"test_app" ofType:@"plist"];
    NSArray *listArr = [NSArray arrayWithContentsOfFile:dataPath];
    NSInteger count = self.listArray.count;
    if (count > 0) {
        [self.listArray removeAllObjects];
    }
    NSInteger num = listArr.count;
    for (NSInteger i = 0; i < num; i ++) {
        NSDictionary *dict = listArr[i];
        LSPModel *model = [LSPModel mj_objectWithKeyValues:dict];
        LSPModelFrame *modelFrame = [[LSPModelFrame alloc] init];
        modelFrame.model = model;
        [self.listArray addObject:modelFrame];
    }
   
    [self.interactor requestData:self.listArr];
    
}
- (NSArray<LSPModelFrame *> *)listArr
{
    return self.listArray;
}
- (NSArray *)getListArray
{
    return self.listArray;
}

@end
