//
//  SPMainViewController.h
//  SPengViper
//
//  Created by lisipeng on 2018/4/28.
//  Copyright © 2018年 px. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SPViperView.h>
#import "SPMainListViewProtocol.h"
#import "SPMainTableViewBusinessProtocol.h"
@interface SPMainViewController : UIViewController<SPViperView,SPMainListViewProtocol,SPMainTableViewBusinessProtocol>

@end
