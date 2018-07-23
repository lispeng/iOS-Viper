//
//  SPDetailListModule.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/6.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LSPModel;
@interface SPDetailListModule : NSObject
+ (UIViewController *)buildControllerWithModel:(LSPModel *)model;
@end
