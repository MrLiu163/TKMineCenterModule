//
//  TKMonitor.h
//  TongKuPlaceOrderPlatform
//
//  Created by mrliu on 2020/11/24.
//  Copyright © 2020 tongku. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TKMonitor : NSObject

/** 打印日志 */
+ (void)saySomething:(NSString *)someThing;

@end

NS_ASSUME_NONNULL_END
