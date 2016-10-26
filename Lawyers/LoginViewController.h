//
//  LoginViewController.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 24/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface LoginViewController :BaseViewController
@property (strong, nonatomic) IBOutlet UIBarButtonItem *skip;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *langBtn;
- (IBAction)skipBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *langBtnAction;
@property (strong, nonatomic) IBOutlet UITextField *emailTxtfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxtfield;
@property (strong, nonatomic) IBOutlet UIButton *signIn;
@property (strong, nonatomic) IBOutlet UIButton *laywerSigninBtn;
@property (strong, nonatomic) IBOutlet UIButton *userSigninBtn;
- (IBAction)changeLanguage:(id)sender;
- (IBAction)signupBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *forgetPasswordBtn;

- (IBAction)forgetPasswordAction:(id)sender;
- (IBAction)laywerSignupBtnAction:(id)sender;

- (IBAction)userSignupBtnAction:(id)sender;

@end
