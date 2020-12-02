//
//  NSBundle+TKMineCenter.h
//  TKMineCenterModule
//
//  Created by mrliu on 2020/11/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (TKMineCenter)

/** 获取包中图片 */
+ (UIImage *)tk_mineCenterImageWithName:(NSString *)imageName;

/** 获取本地字符串 */
+ (NSString *)tk_localizedStringForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
