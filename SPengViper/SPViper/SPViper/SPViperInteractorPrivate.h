//
//  SPViperInteractorPrivate.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPViperInteractor.h"
@protocol SPViperInteractor;
@protocol SPViperInteractorPrivate <SPViperInteractor>

- (void)setEventHandler:(id)eventHandler;

- (void)setDataSource:(id)dataSource;

@end

