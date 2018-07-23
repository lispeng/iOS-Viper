//
//  SPViperWireframePrivate.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPViperWireframe.h"
#import "SPViperRouter.h"
@protocol SPViperWireframePrivate <SPViperWireframe>
- (void)setView:(id<SPViperView>)view;
- (id<SPViperRouter>)router;
- (void)setRouter:(id<SPViperRouter>)router;
@end
