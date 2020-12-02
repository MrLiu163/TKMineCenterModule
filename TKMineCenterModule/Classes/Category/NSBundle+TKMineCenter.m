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
        arrowImage = [[UIImage imageWithContentsOfFile:[[self tk_mineCenterBundle] pathForResource:imageName ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return arrowImage;
}

+ (NSString *)tk_localizedStringForKey:(NSString *)key
{
    return [self tk_localizedStringForKey:key value:nil];
}

+ (NSString *)tk_localizedStringForKey:(NSString *)key value:(NSString *)value
{
    static NSBundle *bundle = nil;
    if (bundle == nil) {
        NSString *language = nil;
        // 如果配置中没有配置语言
        if (!language) {
            // （iOS获取的语言字符串比较不稳定）目前框架只处理en、zh-Hans、zh-Hant三种情况，其他按照系统默认处理
            language = [NSLocale preferredLanguages].firstObject;
        }
        
        if ([language hasPrefix:@"en"]) {
            language = @"en";
        } else if ([language hasPrefix:@"zh"]) {
            if ([language rangeOfString:@"Hans"].location != NSNotFound) {
                language = @"zh-Hans"; // 简体中文
            } else { // zh-Hant\zh-HK\zh-TW
                language = @"zh-Hant"; // 繁體中文
            }
        } else if ([language hasPrefix:@"ko"]) {
            language = @"ko";
        } else if ([language hasPrefix:@"ru"]) {
            language = @"ru";
        } else if ([language hasPrefix:@"uk"]) {
            language = @"uk";
        } else {
            language = @"en";
        }
        
        // 从.bundle中查找资源
        bundle = [NSBundle bundleWithPath:[[NSBundle tk_mineCenterBundle] pathForResource:language ofType:@"lproj"]];
    }
    value = [bundle localizedStringForKey:key value:value table:nil];
    return [[NSBundle mainBundle] localizedStringForKey:key value:value table:nil];
}

@end
