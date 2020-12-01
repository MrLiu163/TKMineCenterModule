//
//  TKViewController.m
//  TKMineCenterModule
//
//  Created by MrLiu163 on 11/27/2020.
//  Copyright (c) 2020 MrLiu163. All rights reserved.
//

#import "TKViewController.h"
#import <TKMineCenterModule/TKMineCenterModule.h>

@interface TKViewController ()

@end

@implementation TKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
