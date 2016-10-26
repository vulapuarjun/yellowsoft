//
//  LoginViewController.m
//  Lawyers
//
//  Created by Balakrishna Nadella on 24/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "LoginViewController.h"
#import "MCLocalization.h"
#import "Common.h"
#import "Utils.h"
#import "UserSignUpViewController.h"
#import "TabBarViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if ([[Utils getLanguage] isEqualToString:KEY_LANGUAGE_EN]) {
        [_langBtn setTitle:@"Ar"];
           } else {
        [_langBtn setTitle:@"En"];
        
         }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    /*
    if ([[Utils getLanguage] isEqualToString:KEY_LANGUAGE_AR]) {
        //[[UILabel appearance] setTextAlignment:NSTextAlignmentRight];
        [[UITextField appearance] setTextAlignment:NSTextAlignmentRight];
        [[UITextView appearance] setTextAlignment:NSTextAlignmentRight];
        [[UIView appearance] setSemanticContentAttribute:UISemanticContentAttributeForceRightToLeft];
        
        
        //[[UIButton appearance] titleLabel].font = [UIFont fontWithName:@"GE Flow" size:17];
    } else {
        //[[UILabel appearance] setTextAlignment:NSTextAlignmentLeft];
        //[[UILabel appearance] setFont:[UIFont systemFontOfSize:15]];
        [[UITextField appearance] setTextAlignment:NSTextAlignmentLeft];
        [[UITextView appearance] setTextAlignment:NSTextAlignmentLeft];
        [[UIView appearance] setSemanticContentAttribute:UISemanticContentAttributeForceLeftToRight];
        
    }
     */

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)skipBtnAction:(id)sender {
    TabBarViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}
- (IBAction)changeLanguage:(id)sender {
        if ([[Utils getLanguage] isEqualToString:KEY_LANGUAGE_EN]) {
            [_langBtn setTitle:@"En"];
            [Utils setLanguage:KEY_LANGUAGE_AR];
            [[MCLocalization sharedInstance] setLanguage:KEY_LANGUAGE_AR];
            
        } else {
            [_langBtn setTitle:@"Ar"];

            [Utils setLanguage:KEY_LANGUAGE_EN];
            [[MCLocalization sharedInstance] setLanguage:KEY_LANGUAGE_EN];
            
        }
    [APP_DELEGATE reloadUI];
    NSArray *windows = [UIApplication sharedApplication].windows;
    for (UIWindow *window in windows) {
        for (UIView *view in window.subviews) {
            [view removeFromSuperview];
            [window addSubview:view];
        }
    }

}

- (IBAction)signupBtnAction:(id)sender {
    [self makePostCallForPage:USER_LOGIN withParams:@{@"email":self.emailTxtfield.text, @"password":self.passwordTxtfield.text} withRequestCode:1];

}
- (IBAction)forgetPasswordAction:(id)sender {
}

- (IBAction)laywerSignupBtnAction:(id)sender {
}
- (void)parseResult:(id)result withCode:(int)reqeustCode {
    if (reqeustCode == 1) {
        if ([[result valueForKey:@"status"] isEqualToString:@"Failure"]) {
            [self showErrorAlertWithMessage:Localized(@"invalid_user_name")];
        } else {
            [Utils loginUserWithMemberId:[result valueForKey:@"member_id"] withPhoneNumber:@""];
           // NSString *deviceToken = [[NSUserDefaults standardUserDefaults] valueForKey:@"TOKEN"];
           // [self makePostCallForPage:PAGE_REGISTER_TOKEN withParams:@{@"device_token":deviceToken, @"member_id":[result valueForKey:@"member_id"]} withRequestCode:100];
            TabBarViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarViewController"];
            [self.navigationController pushViewController:newView animated:YES];
        }
    } else {
        [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    }
}


- (IBAction)userSignupBtnAction:(id)sender {
    UserSignUpViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"UserSignUpViewController"];
    [self.navigationController pushViewController:newView animated:YES];
}
@end
