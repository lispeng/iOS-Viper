//
//  NSObject+SPViperAssembly.h
//  SPViper
//
//  Created by lisipeng on 2018/4/27.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol SPViperViewPrivate,SPViperPresenterPrivate,SPViperInteractorPrivate,SPViperWireframePrivate,SPViperRouter;
@interface NSObject (SPViperAssembly)
+ (void)assembleViperForView:(id<SPViperViewPrivate>)view
                   presenter:(id<SPViperPresenterPrivate>)presenter
                  interactor:(id<SPViperInteractorPrivate>)interactor
                   wireframe:(id<SPViperWireframePrivate>)wireframe
                      router:(id<SPViperRouter>)router;
@end
