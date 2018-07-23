//
//  SPMainServiceOutput.h
//  SPengViper
//
//  Created by lisipeng on 2018/6/6.
//  Copyright © 2018年 px. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SPMainServiceOutput <NSObject>

- (void)requestData:(id)responseObject;
- (void)requestError:(NSError *)error;
@end
