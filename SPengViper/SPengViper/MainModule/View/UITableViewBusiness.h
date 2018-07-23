//
//  UITableViewBusiness.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol SPMainTableViewBusinessProtocol;
@interface UITableViewBusiness : NSObject<UITableViewDelegate,UITableViewDataSource>
/**
 *<#annotation#>
 */
@property (nonatomic , strong) NSMutableArray  *listArray;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) id<SPMainTableViewBusinessProtocol>  delegate;

@end
