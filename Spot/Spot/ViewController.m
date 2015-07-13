//
//  ViewController.m
//  Spot
//
//  Created by Giuliano Giacaglia on 7/9/15.
//  Copyright (c) 2015 Giuliano Giacaglia. All rights reserved.
//

#import "ViewController.h"
#import "SpotContactViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    //    [self presentViewController:[SpotContactViewController new] animated:YES completion:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
