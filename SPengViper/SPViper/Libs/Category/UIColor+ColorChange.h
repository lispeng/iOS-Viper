//
//  UIColor+ColorChange.h
//  tempApp
//
//  Created by lisipeng on 2017/9/19.
//  Copyright © 2017年 px. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ColorChange)

+(UIColor *)colorConvertWithHexString:(NSString*)hexString;

+(UIColor *)colorConvertWithHexString:(NSString*)hexString alpha:(CGFloat)alpha;

@end
