//
//  SPMainListWireframe.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/29.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SPViperWireframe.h>
#import "SPMainListWireframeInput.h"
@class LSPModel;
@interface SPMainListWireframe : NSObject<SPViperWireframe,SPMainListWireframeInput>

- (void)pushViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated;

- (void)pushViewControllerWithModel:(LSPModel *)model FromViewController:(UIViewController *)source animated:(BOOL)animated;

- (void)popViewController:(UIViewController *)viewController animated:(BOOL)animated;
@end
