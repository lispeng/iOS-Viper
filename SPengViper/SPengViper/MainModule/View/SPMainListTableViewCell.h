//
//  SPMainListTableViewCell.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LSPModelFrame;
@interface SPMainListTableViewCell : UITableViewCell
/**
 *<#annotation#>
 */
@property (nonatomic , strong) LSPModelFrame  *modelFrame;

+ (instancetype)sp_mainListTableViewCellWithTableView:(UITableView *)tableView;
@end
