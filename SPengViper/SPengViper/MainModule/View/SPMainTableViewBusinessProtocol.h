//
//  SPMainTableViewBusinessProtocol.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/7.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LSPModel;
@protocol SPMainTableViewBusinessProtocol <NSObject>
- (void)tableViewCellClickWithModel:(LSPModel *)model;
@end
