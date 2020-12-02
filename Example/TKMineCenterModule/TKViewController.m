//
//  TKViewController.m
//  TKMineCenterModule
//
//  Created by MrLiu163 on 11/27/2020.
//  Copyright (c) 2020 MrLiu163. All rights reserved.
//

#import "TKViewController.h"
#import <TKMineCenterModule/TKMineCenterModule.h>
#import <TKMineCenterModule/NSBundle+TKMineCenter.h>

@interface TKViewController ()

@end

@implementation TKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // bundle图片资源访问
    UIImage *topUpIcon = [NSBundle tk_mineCenterImageWithName:@"pre_topUp@2x"];
    UIImageView *topUpImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 60, 60)];
    [self.view addSubview:topUpImageView];
    topUpImageView.contentMode = UIViewContentModeScaleAspectFill;
    topUpImageView.image = topUpIcon;
    // bundle本地化字符串访问
    UILabel *goodLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 180, 150, 30)];
    [self.view addSubview:goodLabel];
    goodLabel.text = [NSBundle tk_localizedStringForKey:TKGoodNightText];
    NSLog(@"----->>>>>>");
}

- (IBAction)tapBtnAction:(UIButton *)sender {
    TKMineCenterViewController *mineCenterVc = [[TKMineCenterViewController alloc] init];
    [self.navigationController pushViewController:mineCenterVc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
