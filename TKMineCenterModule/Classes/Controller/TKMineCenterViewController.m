//
//  TKMineCenterViewController.m
//  TestLibUse
//
//  Created by mrliu on 2020/11/27.
//  Copyright © 2020 mrliu. All rights reserved.
//

#import "TKMineCenterViewController.h"
#import "TKMineCenterLineView.h"

@interface TKMineCenterViewController ()

@end

@implementation TKMineCenterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initUI];
}

- (void)initUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat nameFontSize = 13.0;
    UILabel *userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    userNameLabel.center = self.view.center;
    [self.view addSubview:userNameLabel];
    userNameLabel.font = [UIFont systemFontOfSize:nameFontSize];
    userNameLabel.textColor = [UIColor grayColor];
    userNameLabel.textAlignment = NSTextAlignmentCenter;
    userNameLabel.text = @"个人中心用户名";
    
    TKMineCenterLineView *mineCenterView = [[TKMineCenterLineView alloc] initWithFrame:CGRectMake(0, 300, 375, 200)];
    [self.view addSubview:mineCenterView];
    [mineCenterView changeBackColor];
    
}

@end
