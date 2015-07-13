//
//  ContactViewController.m
//  Spot
//
//  Created by Giuliano Giacaglia on 7/13/15.
//  Copyright (c) 2015 Giuliano Giacaglia. All rights reserved.
//

#import "ContactViewController.h"
#import "ConfirmationViewController.h"

@interface ContactViewController ()
@property (weak, nonatomic) IBOutlet UIButton *confirmationButton;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addPropertiesToButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)addPropertiesToButton {
    self.confirmationButton.layer.borderColor = UIColor.clearColor.CGColor;
    self.confirmationButton.layer.borderWidth = 1.0f;
    self.confirmationButton.layer.cornerRadius = 6.0f;
}

- (IBAction)confirmNumber:(id)sender {
    BOOL validateNumber = [self validateNumber:self.numberTextField.text];
    if (validateNumber) {
        ConfirmationViewController *confirmationVC = [ConfirmationViewController new];
        [self presentViewController:confirmationVC animated:YES completion:nil];
    }
}


- (BOOL)validateNumber:(NSString *)numberString {
    BOOL valid;
    NSCharacterSet *alphaNums = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet *inStringSet = [NSCharacterSet characterSetWithCharactersInString:numberString];
    valid = [alphaNums isSupersetOfSet:inStringSet];
    return valid;
}


@end
