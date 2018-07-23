//
//  SPViewFrame.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/8.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPViewFrame.h"

@implementation SPViewFrame
+ (CGRect)getMianViewFrame
{
    CGFloat mainViewX = 0;
    CGFloat mainViewY = 0;
    CGFloat mainViewW = SCREEN_WIDTH;
    CGFloat mainViewH = SCREEN_HEIGHT;
    CGRect mainViewFrame = CGRectMake(mainViewX, mainViewY, mainViewW, mainViewH);

    return mainViewFrame;
}

@end
