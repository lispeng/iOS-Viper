//
//  SPMainListDataService.h
//  SPengViper
//
//  Created by lisipeng on 2018/5/31.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LSPModelFrame;
@protocol SPMainServiceProtocol;
@protocol SPMainListDataService <NSObject>
/**
 *<#annotation#>
 */
@property (nonatomic ,readonly ,strong) NSArray<LSPModelFrame *>  *listArr;
/**
 *<#annotation#>
 */
@property (nonatomic , weak) id<SPMainServiceProtocol>  interactor;

@end
