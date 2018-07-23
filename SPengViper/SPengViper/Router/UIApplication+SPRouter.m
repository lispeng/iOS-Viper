//
//  UIApplication+SPRouter.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import "UIApplication+SPRouter.h"
#import "SPRouter.h"
@implementation UIApplication (SPRouter)
- (SPRouter *)sp_router
{
    SPRouter *router = [[SPRouter alloc] init];
    return router;
}
@end
