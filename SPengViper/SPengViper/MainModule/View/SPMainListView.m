//
//  SPMainListView.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPMainListView.h"

static const NSInteger kScreenH = 667;

@implementation SPMainListView
- (UITableView *)tableView
{
    if (nil == _tableView)
    {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.backgroundColor = BackColor;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        if (@available(iOS 11.0, *))
        {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
        [self addSubview:_tableView];
        
    }
    return _tableView;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self setupBuyRecordViewSubviews];
    }
    return self;
}
- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    [self setupBuyRecordViewSubviews];
}
- (void)setupBuyRecordViewSubviews
{
    // self.backgroundColor = [PXUIConfiguration shareConfig].viewBackgroundColor;
    self.backgroundColor = [UIColor whiteColor];
    NSInteger screenHeight = SCREEN_HEIGHT;
    
    CGFloat tableViewX = 0;
    CGFloat tableViewY = 0;
    CGFloat tableViewWidth = SCREEN_WIDTH;
    CGFloat tableViewHeight = screenHeight;
    self.tableView.frame = CGRectMake(tableViewX, tableViewY, tableViewWidth, tableViewHeight);
    NSInteger screenH = SCREEN_HEIGHT;
    CGFloat scaleH = screenH / kScreenH;
    if (568 == screenH) {
        self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 64 + 55 + 10, 0);
        
    }else
    {
        self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 64, 0);
        
    }
    if (@available(iOS 11.0, *)) {
        self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        if (812 == screenHeight)
        {
            self.tableView.contentInset = UIEdgeInsetsMake(0, 0, 32 + 88, 0);
        }
    }
    
    self.tableView.showsHorizontalScrollIndicator = NO;
}

@end
