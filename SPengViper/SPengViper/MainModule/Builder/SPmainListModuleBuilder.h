//
//  SPmainListModuleBuilder.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol SPViperViewPrivate,SPMainListDataService,SPMainListRouter;
@interface SPmainListModuleBuilder : NSObject
+ (UIViewController *)viewControllerWithListService:(id<SPMainListDataService>)service router:(id<SPMainListRouter>)router;
@end
