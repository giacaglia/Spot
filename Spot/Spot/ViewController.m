//
//  ViewController.m
//  Spot
//
//  Created by Giuliano Giacaglia on 7/9/15.
//  Copyright (c) 2015 Giuliano Giacaglia. All rights reserved.
//

#import "ViewController.h"
#import <DigitsKit/DigitsKit.h>
#import "SpotContactViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    DGTAuthenticateButton *authenticateButton = [DGTAuthenticateButton buttonWithAuthenticationCompletion:^(DGTSession *session, NSError *error) {
//        // play with Digits session
//    }];
//    authenticateButton.center = self.view.center;
//    [self.view addSubview:authenticateButton];
    [self presentViewController:[SpotContactViewController new] animated:YES completion:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self presentViewController:[SpotContactViewController new] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
