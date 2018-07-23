//
//  LSPModelFrame.h
//  tempApp
//
//  Created by lisipeng on 2017/12/27.
//  Copyright © 2017年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class LSPModel;
@interface LSPModelFrame : NSObject
/**
 *<#annotation#>
 */
@property (nonatomic , assign) CGRect  iconImageViewFrame;
/**
 *<#annotation#>
 */
@property (nonatomic , assign) CGRect  titleLabelFrame;
/**
 *<#annotation#>
 */
@property (nonatomic , assign) CGRect  contentLabelFrame;
/**
 *<#annotation#>
 */
@property (nonatomic , assign) CGRect  lineFrame;

/**
 *<#annotation#>
 */
@property (nonatomic , assign) CGFloat  cellHeight;

/**
 *<#annotation#>
 */
@property (nonatomic , strong) LSPModel  *model;

@end
