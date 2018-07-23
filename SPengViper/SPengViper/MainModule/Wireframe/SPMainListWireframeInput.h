//
//  SPMainListWireframeInput.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SPViperRouter;
@class LSPModel;
@protocol SPMainListWireframeInput <NSObject>
- (void)pushViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated;
- (void)pushViewControllerWithModel:(LSPModel *)model FromViewController:(UIViewController *)source animated:(BOOL)animated;
- (void)popViewController:(UIViewController *)viewController animated:(BOOL)animated;
@end
