//
//  CashOutViewController.m
//  Spot
//
//  Created by Giuliano Giacaglia on 7/10/15.
//  Copyright (c) 2015 Giuliano Giacaglia. All rights reserved.
//

#import "CashOutViewController.h"

@interface CashOutViewController ()

@end

@implementation CashOutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addCashBalance {
    UILabel *cashBalanceLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 40, self.view.frame.size.height/2 - 50, 80, 100)];
    cashBalanceLabel.text = @"$5";
    cashBalanceLabel.font = [UIFont fontWithName:@"Helvetica" size:35.0f];
    [self.view addSubview:cashBalanceLabel];
}

@end
