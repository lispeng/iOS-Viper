//
//  SPDetailListPresenter.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/7.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SPViperPresenter.h>
#import "SPDetailEventHandler.h"
#import "SPDetailListDataSource.h"
@interface SPDetailListPresenter : NSObject<SPViperPresenter,SPDetailEventHandler,SPDetailListDataSource>

@end
