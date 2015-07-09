//
//  CreditCardViewController.m
//  Spot
//
//  Created by Giuliano Giacaglia on 7/9/15.
//  Copyright (c) 2015 Giuliano Giacaglia. All rights reserved.
//

#import "CreditCardViewController.h"
#import "PTKView.h"

@interface CreditCardViewController ()<PTKViewDelegate>
@property (weak, nonatomic) PTKView *paymentView;
@property (nonatomic, strong) UIButton *saveButton;
@end

@implementation CreditCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self addCreditCardView];
    [self addSaveButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)addCreditCardView {
    PTKView *view = [[PTKView alloc] initWithFrame:CGRectMake(15, 40, 290, 55)];
    self.paymentView = view;
    self.paymentView.center = CGPointMake(self.view.center.x, self.paymentView.center.y);
    self.paymentView.delegate = self;
    [self.view addSubview:self.paymentView];
}

- (void)addSaveButton {
    self.saveButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 280, self.view.frame.size.width - 40, 50)];
    self.saveButton.backgroundColor = [UIColor colorWithRed:0 green:0 blue:255 alpha:0.3f];
    [self.saveButton setTitle:@"Save Card" forState:UIControlStateNormal];
    [self.saveButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [self.saveButton addTarget:self action:@selector(saveCard) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.saveButton];
}


- (void)paymentView:(PTKView *)view withCard:(PTKCard *)card isValid:(BOOL)valid {
    self.saveButton.enabled = valid;
    if (valid) self.saveButton.backgroundColor = [UIColor colorWithRed:0 green:0 blue:255 alpha:1.0f];
    else self.saveButton.backgroundColor = [UIColor colorWithRed:0 green:0 blue:255 alpha:0.3f];
}

- (void)saveCard {
//    self.saveButton.backgroundColor = [UIColor colorWithRed:0 green:0 blue:255 alpha:1.0f];
}

@end
