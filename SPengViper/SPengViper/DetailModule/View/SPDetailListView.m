//
//  SPDetailListView.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/8.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPDetailListView.h"
#import "LSPModel.h"

static const NSInteger kScreenH = 667;
@interface SPDetailListView()
/**
 *<#annotation#>
 */
@property (nonatomic , weak) UIScrollView  *scrollView;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) UIImageView  *iconImageView;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) UILabel  *titleLabel;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) UILabel  *contentLabel;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) UIView  *line;
@end

@implementation SPDetailListView
- (instancetype)init
{
    if (self = [super init]) {
        [self initialization];
    }
    return self;
}
- (void)setModel:(LSPModel *)model
{
    _model = model;
    
    
    //COMMON
    CGFloat lrMargin = 15;
    NSInteger screenWidth = SCREEN_WIDTH;
    CGFloat topMargin = 10;
    CGFloat midMargin = 15;
    CGFloat defaultHeight = 120;
    CGFloat iconWH = 80;
    
    //iconFrame
    
    CGFloat iconImageViewWidth  = iconWH;
    CGFloat iconImageViewHeight = iconWH;
    CGFloat iconImageViewX      = lrMargin;
    CGFloat iconImageViewY      = topMargin;
    self.iconImageView.frame = CGRectMake(iconImageViewX, iconImageViewY, iconImageViewWidth, iconImageViewHeight);
    NSString *imageStr = [NSString stringWithFormat:@"%@.jpg",model.icon];
    self.iconImageView.image = [UIImage imageNamed:imageStr];
    self.iconImageView.backgroundColor = [UIColor orangeColor];
    //titleLabel Frame
    CGFloat maxWidth = screenWidth - lrMargin * 2;
    NSString *title = model.title;
    CGSize titleSize = [title sizeWithFont:[UIFont boldSystemFontOfSize:17]];
    CGFloat titleLabelX = lrMargin;
    CGFloat titleLabelY = iconImageViewY + iconImageViewHeight + midMargin;
    CGFloat titleLabelWidth = maxWidth;
    CGFloat titleLabelHeight = titleSize.height;
    self.titleLabel.frame = CGRectMake(titleLabelX, titleLabelY, titleLabelWidth, titleLabelHeight);
    self.titleLabel.text = model.title;
    //content Frame
    NSString *content = model.content;
    CGSize contentSize = [content sizeWithFont:[UIFont systemFontOfSize:15] maxW:maxWidth];
    CGFloat contentH = contentSize.height;
    CGFloat contentLabelX = titleLabelX;
    CGFloat contentLabelY = titleLabelY + titleLabelHeight + midMargin;
    CGFloat contentLabelWidth = maxWidth;
    CGFloat contentLabelHeight = contentH;//defaultHeight - contentLabelY - iconImageViewY;
    self.contentLabel.frame = CGRectMake(contentLabelX, contentLabelY, contentLabelWidth, contentLabelHeight);
    self.contentLabel.text = content;
    CGFloat totalH = contentLabelY + contentH;
    if (defaultHeight < totalH) {
        defaultHeight = totalH + 10;
    }
    
    
    CGFloat scrollViewX      = 0;
    CGFloat scrollViewY      = 0;
    CGFloat scrollViewWidth  = screenWidth;
    CGFloat scrollViewHeight = SCREEN_HEIGHT;
    CGFloat contentInH = scrollViewHeight + 5;
    if (defaultHeight > contentInH) {
        contentInH = defaultHeight;
    }
    self.scrollView.frame = CGRectMake(scrollViewX, scrollViewY, scrollViewWidth, scrollViewHeight);
    self.scrollView.contentSize = CGSizeMake(screenWidth, contentInH);
}
- (void)initialization
{
    UIScrollView  *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor whiteColor];
    scrollView.showsVerticalScrollIndicator = NO;
    [self addSubview: scrollView];
    self.scrollView = scrollView;
    
    UIImageView  *iconImageView = [[UIImageView alloc] init];
    [scrollView addSubview:iconImageView];
    self.iconImageView = iconImageView;
    
    UILabel  *titleLabel = [[UILabel alloc] init];
    titleLabel.font = [UIFont boldSystemFontOfSize:17];
    titleLabel.textColor = [UIColor blueColor];
    titleLabel.textAlignment = NSTextAlignmentLeft;
    [scrollView addSubview:titleLabel];
    self.titleLabel = titleLabel;
    
    UILabel  *contentLabel = [[UILabel alloc] init];
    contentLabel.font = [UIFont systemFontOfSize:15];
    contentLabel.textColor = [UIColor blueColor];
    contentLabel.textAlignment = NSTextAlignmentLeft;
    contentLabel.numberOfLines = 0;
    [scrollView addSubview:contentLabel];
    self.contentLabel = contentLabel;
    
    
}


@end
