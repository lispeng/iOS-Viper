//
//  SPListViewEventHandler.h
//  SPengViper
//
//  Created by lisipeng on 2018/4/28.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SPViperViewEventHandler.h>
@class LSPModel;
@protocol SPListViewEventHandler <SPViperViewEventHandler,UIViewControllerPreviewingDelegate>
- (void)tableViewCellClickWithModel:(LSPModel *)model;
@end

