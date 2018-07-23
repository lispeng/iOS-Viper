//
//  SPMainListPresenterProtocol.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SPMainListPresenterProtocol <NSObject>
- (void)fetchAllListData;
- (void)refreshMainListCellWithArray:(NSArray *)listArray;
- (void)loadErrorPage;
- (void)loadEmptyPage;
@end
