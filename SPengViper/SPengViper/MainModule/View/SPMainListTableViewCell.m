//
//  SPMainListTableViewCell.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/5.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPMainListTableViewCell.h"
#import "LSPModelFrame.h"
#import "LSPModel.h"
@interface SPMainListTableViewCell()
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

@implementation SPMainListTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setupTableViewCellSubviews];
    }
    return self;
}
- (void)setModelFrame:(LSPModelFrame *)modelFrame
{
    _modelFrame = modelFrame;
    
    LSPModel *model = modelFrame.model;
    
    self.iconImageView.frame = modelFrame.iconImageViewFrame;
    NSString *imageStr = [NSString stringWithFormat:@"%@.jpg",model.icon];
    self.iconImageView.image = [UIImage imageNamed:imageStr];
 //   self.iconImageView.layer.cornerRadius = 3;
 //   self.iconImageView.layer.masksToBounds = YES;
    
    self.titleLabel.frame = modelFrame.titleLabelFrame;
    self.titleLabel.text = model.title;
    
    self.contentLabel.frame = modelFrame.contentLabelFrame;
    self.contentLabel.text = model.content;
    
    self.line.frame = modelFrame.lineFrame;
     
  
}
- (void)setupTableViewCellSubviews
{
    UIImageView  *iconImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:iconImageView];
    self.iconImageView = iconImageView;
    
    UILabel  *titleLabel = [[UILabel alloc] init];
    titleLabel.font = [UIFont boldSystemFontOfSize:17];
 //   titleLabel.displaysAsynchronously = YES;
    titleLabel.textColor = [UIColor blueColor];
    titleLabel.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:titleLabel];
    self.titleLabel = titleLabel;
    
    UILabel  *contentLabel = [[UILabel alloc] init];
    contentLabel.font = [UIFont systemFontOfSize:15];
  //  contentLabel.displaysAsynchronously = YES;
    contentLabel.textColor = [UIColor blueColor];
    contentLabel.textAlignment = NSTextAlignmentLeft;
    contentLabel.numberOfLines = 0;
  //  contentLabel.clearContentsBeforeAsynchronouslyDisplay = YES;
    [self.contentView addSubview:contentLabel];
    self.contentLabel = contentLabel;
    
    UIView  *line = [[UIView alloc] init];
    line.backgroundColor = [UIColor colorConvertWithHexString:@"#E7E7E7"];
    [self.contentView addSubview:line];
    self.line = line;
    
}

+ (instancetype)sp_mainListTableViewCellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"sp_mainListTableViewCell";
    SPMainListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (nil == cell) {
        cell = [[SPMainListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

- (void)setHighlighted:(BOOL)highlighted
{
    //[super setHighlighted:highlighted];
    
    if(highlighted)
    {
        
        self.contentView.backgroundColor = [UIColor colorConvertWithHexString:@"#f7f7f7"];
    }else{
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
}
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    if(highlighted)
    {
        self.contentView.backgroundColor = [UIColor colorConvertWithHexString:@"#f7f7f7"];
    }else{
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    //  [super setSelected:selected animated:animated];
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    // Configure the view for the selected state
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


@end
