//
//  DoneViewController.m
//  Spot
//
//  Created by Giuliano Giacaglia on 7/9/15.
//  Copyright (c) 2015 Giuliano Giacaglia. All rights reserved.
//

#import "DoneViewController.h"

@interface DoneViewController ()

@end

@implementation DoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self initializeDoneLabel];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initializeDoneLabel {
    UILabel *doneLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 140, self.view.frame.size.width, 130)];
    doneLabel.text = @"You are done! Just text \nus and the person that you want to send money to";
    doneLabel.numberOfLines = 0;
    doneLabel.font = [UIFont fontWithName:@"Helvetica" size:30.0f];
    doneLabel.center = CGPointMake(self.view.center.x, doneLabel.center.y);
    [self.view addSubview:doneLabel];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
