//
//  LSPModelFrame.m
//  tempApp
//
//  Created by lisipeng on 2017/12/27.
//  Copyright © 2017年 px. All rights reserved.
//

#import "LSPModelFrame.h"
#import "LSPModel.h"
@implementation LSPModelFrame
- (void)setModel:(LSPModel *)model
{
    _model = model;
    
    //COMMON
    CGFloat lrMargin = 15;
    NSInteger screenWidth = [UIScreen mainScreen].bounds.size.width;
    CGFloat topMargin = 10;
    CGFloat midMargin = 15;
    CGFloat defaultHeight = 120;
    CGFloat iconWH = 80;
    
    //iconFrame

    CGFloat iconImageViewWidth  = iconWH;
    CGFloat iconImageViewHeight = iconWH;
    CGFloat iconImageViewX      = lrMargin;
    CGFloat iconImageViewY      = (defaultHeight - iconImageViewHeight) / 2.0;
    self.iconImageViewFrame = CGRectMake(iconImageViewX, iconImageViewY, iconImageViewWidth, iconImageViewHeight);
    
    //titleLabel Frame
    CGFloat maxWidth = screenWidth - lrMargin * 2 - iconWH - midMargin;
    NSString *title = model.title;
    CGSize titleSize = [title sizeWithFont:[UIFont boldSystemFontOfSize:17]];
    CGFloat titleLabelX = iconImageViewX + iconImageViewWidth + midMargin;
    CGFloat titleLabelY = iconImageViewY;
    CGFloat titleLabelWidth = maxWidth;
    CGFloat titleLabelHeight = titleSize.height;
    self.titleLabelFrame = CGRectMake(titleLabelX, titleLabelY, titleLabelWidth, titleLabelHeight);
    
    //content Frame
    NSString *content = model.content;
    CGSize contentSize = [content sizeWithFont:[UIFont systemFontOfSize:15] maxW:maxWidth];
    CGFloat contentH = contentSize.height;
    CGFloat contentLabelX = titleLabelX;
    CGFloat contentLabelY = titleLabelY + titleLabelHeight + midMargin;
    CGFloat contentLabelWidth = maxWidth;
    CGFloat contentLabelHeight = contentH;//defaultHeight - contentLabelY - iconImageViewY;
    self.contentLabelFrame = CGRectMake(contentLabelX, contentLabelY, contentLabelWidth, contentLabelHeight);
    CGFloat totalH = contentLabelY + contentH;
    if (defaultHeight < totalH) {
        defaultHeight = totalH + 10;
    }
    
    
    CGFloat lineX      = 0;
    CGFloat lineY      = defaultHeight - 1;
    CGFloat lineWidth  = screenWidth;
    CGFloat lineHeight = 1;
    self.lineFrame = CGRectMake(lineX, lineY, lineWidth, lineHeight);
    
    self.cellHeight = defaultHeight;
}
@end
