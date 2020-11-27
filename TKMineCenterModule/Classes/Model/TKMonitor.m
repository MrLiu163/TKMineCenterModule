//
//  TKMonitor.m
//  TongKuPlaceOrderPlatform
//
//  Created by mrliu on 2020/11/24.
//  Copyright © 2020 tongku. All rights reserved.
//

#import "TKMonitor.h"

@implementation TKMonitor

/** 打印日志 */
+ (void)saySomething:(NSString *)someThing
{
    NSLog(@"TKMonitor---->>>>%@", someThing ? : @"");
}

@end
