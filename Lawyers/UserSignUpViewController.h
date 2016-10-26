//
//  UserSignUpViewController.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 25/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface UserSignUpViewController : BaseViewController
@property (strong, nonatomic) IBOutlet UITextField *firstNameTxt;
@property (strong, nonatomic) IBOutlet UITextField *lastNameTxt;
@property (strong, nonatomic) IBOutlet UITextField *userNameTxt;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxt;
@property (strong, nonatomic) IBOutlet UITextField *emailTxt;
@property (strong, nonatomic) IBOutlet UITextField *phonenumberTxt;
@property (strong, nonatomic) IBOutlet UIButton *registerBtn;
- (IBAction)registerBtnAction:(id)sender;

@end
