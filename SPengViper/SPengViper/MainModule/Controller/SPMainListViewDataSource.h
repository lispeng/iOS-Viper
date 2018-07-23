//
//  SPMainListViewDataSource.h
//  SPengViper
//
//  Created by lisipeng on 2018/4/28.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol SPMainListViewDataSource <NSObject>
- (NSInteger)numberOfSections;
- (NSInteger)numberOfRowsInSection:(NSIndexPath *)indexPath;
- (NSArray *)getListData;

- (void)refreshMainListCellWithArray:(NSArray *)listArray;
- (void)loadErrorPage;
- (void)loadEmptyPage;
@end

