//
//  SPDetailListInteractor.m
//  SPengViper
//
//  Created by lisipeng on 2018/6/7.
//  Copyright © 2018年 px. All rights reserved.
//

#import "SPDetailListInteractor.h"
#import <SPViperInteractorPrivate.h>
#import "LSPModel.h"
#import "SPViewFrame.h"
@interface SPDetailListInteractor()<SPViperInteractorPrivate>

@end

@implementation SPDetailListInteractor
- (void)setModel:(LSPModel *)model
{
    _model = model;
}
- (LSPModel *)getDetailModel
{
    return self.model;
}
- (CGRect)mainViewFrame
{
    return [SPViewFrame getMianViewFrame];
}


@end
