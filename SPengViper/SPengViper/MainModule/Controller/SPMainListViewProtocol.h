//
//  SPMainListViewProtocol.h
//  SPengViper
//
//  Created by lisipeng on 2018/4/28.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SPMainListViewProtocol <NSObject>
- (UITableView *)tableView;
- (UITableViewCell *)cellForRowAtindexPath:(NSIndexPath *)indexPath;
- (void)refreshDataWithArray:(NSArray *)listArray;
@end
