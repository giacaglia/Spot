//
//  SpotContactViewController.m
//  Spot
//
//  Created by Giuliano Giacaglia on 7/9/15.
//  Copyright (c) 2015 Giuliano Giacaglia. All rights reserved.
//

#import "SpotContactViewController.h"
#import <AddressBook/AddressBook.h>
#import "CreditCardViewController.h"

@interface SpotContactViewController ()
@property (nonatomic, strong) UIImageView *spotImgView;
@end

@implementation SpotContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeSpot];
    [self initializeFirstName];
    [self initializeLastName];
    [self initializePhoneNumber];
    [self initializeAddButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initializeSpot {
    self.spotImgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    self.spotImgView.image = [UIImage imageNamed:@"spot-dog"];
    self.spotImgView.layer.cornerRadius = self.spotImgView.frame.size.width/2;
    self.spotImgView.layer.borderColor = UIColor.clearColor.CGColor;
    self.spotImgView.layer.borderWidth = 1.0f;
    self.spotImgView.clipsToBounds = YES;
    [self.view addSubview:self.spotImgView];
}

- (void)initializeFirstName {
    UILabel *firstNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(250, 20, 100, 30)];
    firstNameLabel.text = @"Spot";
    firstNameLabel.font = [UIFont fontWithName:@"Helvetica" size:30.0f];
    [self.view addSubview:firstNameLabel];
}

- (void)initializeLastName {
    UILabel *lastNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(250, 60, 100, 30)];
    lastNameLabel.text = [NSString stringWithFormat:@"%C", 0xe04f];
    lastNameLabel.font = [UIFont fontWithName:@"Helvetica" size:30.0f];
    [self.view addSubview:lastNameLabel];
}

- (void)initializePhoneNumber {
    UILabel *phoneNumberLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 230, 300, 30)];
    phoneNumberLabel.center = CGPointMake(self.view.center.x, phoneNumberLabel.center.y);
    phoneNumberLabel.font = [UIFont fontWithName:@"Helvetica" size:30.0f];
    phoneNumberLabel.text = @"617-981-3206";
    phoneNumberLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:phoneNumberLabel];
}


- (void)initializeAddButton {
    UIButton *addPhoneButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 280, self.view.frame.size.width - 40, 50)];
    addPhoneButton.backgroundColor = UIColor.blueColor;
    [addPhoneButton setTitle:@"Add Number" forState:UIControlStateNormal];
    [addPhoneButton setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [addPhoneButton addTarget:self action:@selector(addContactPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:addPhoneButton];
}

- (void)addContactPressed {
    ABAddressBookRef addressBook = ABAddressBookCreateWithOptions(nil, nil);
    ABRecordRef person = ABPersonCreate();
    NSData *dataRef = UIImagePNGRepresentation(self.spotImgView.image);
    ABPersonSetImageData(person, (__bridge CFDataRef)dataRef, nil);
    CFErrorRef  anError = NULL;
    ABRecordSetValue(person,kABPersonFirstNameProperty, @"Spot",&anError);
    
    ABMutableMultiValueRef websiteMultiValue = ABMultiValueCreateMutable(kABPersonURLProperty);
    ABMultiValueAddValueAndLabel(websiteMultiValue, @"spot.me", (CFStringRef)@"Website", NULL);
    ABRecordSetValue(person, kABPersonURLProperty, websiteMultiValue, &anError);

    ABMutableMultiValueRef emailMultiValue = ABMultiValueCreateMutable(kABPersonEmailProperty);
    ABMultiValueAddValueAndLabel(emailMultiValue, @"help@spot.me", (CFStringRef)@"Email", NULL);
    ABRecordSetValue(person, kABPersonEmailProperty, emailMultiValue, &anError);

    ABAddressBookAddRecord(addressBook, person, &anError);
    [self presentViewController:[CreditCardViewController new] animated:YES completion:nil];
}

@end
