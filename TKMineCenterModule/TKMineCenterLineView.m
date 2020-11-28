//
//  TKMineCenterLineView.m
//  TestLibUse
//
//  Created by mrliu on 2020/11/27.
//  Copyright © 2020 mrliu. All rights reserved.
//

#import "TKMineCenterLineView.h"

@implementation TKMineCenterLineView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    self.backgroundColor = [UIColor purpleColor];
}

/** 改变背景色 */
- (void)changeBackColor
{
    self.backgroundColor = [UIColor systemBlueColor];
}

@end
