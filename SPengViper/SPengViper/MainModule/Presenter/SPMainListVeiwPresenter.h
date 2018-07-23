//
//  SPMainListVeiwPresenter.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/28.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SPViperPresenter.h>
#import "SPListViewEventHandler.h"
#import "SPMainListViewDataSource.h"
@interface SPMainListVeiwPresenter : NSObject<SPViperPresenter,SPListViewEventHandler,SPMainListViewDataSource>

@end
