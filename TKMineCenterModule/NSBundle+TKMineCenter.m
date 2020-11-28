//
//  NSBundle+TKMineCenter.m
//  TKMineCenterModule
//
//  Created by mrliu on 2020/11/28.
//

#import "NSBundle+TKMineCenter.h"
#import "TKMineCenterViewController.h"

@implementation NSBundle (TKMineCenter)

+ (instancetype)tk_mineCenterBundle
{
    static NSBundle *refreshBundle = nil;
    if (refreshBundle == nil) {
        // 这里不使用mainBundle是为了适配pod 1.x和0.x
        refreshBundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[TKMineCenterViewController class]] pathForResource:@"TKMineCenterModule" ofType:@"bundle"]];
    }
    return refreshBundle;
}

+ (UIImage *)tk_mineCenterImageWithName:(NSString *)imageName
{
    static UIImage *arrowImage = nil;
    if (arrowImage == nil) {
        arrowImage = [[UIImage imageWithContentsOfFile:[[self tk_mineCenterBundle] pathForResource:imageName ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    }
    return arrowImage;
}


@end
