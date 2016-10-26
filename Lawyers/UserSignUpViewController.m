//
//  UserSignUpViewController.m
//  Lawyers
//
//  Created by Balakrishna Nadella on 25/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "UserSignUpViewController.h"
#import "Common.h"
#import "TabBarViewController.h"
@interface UserSignUpViewController ()

@end

@implementation UserSignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)registerBtnAction:(id)sender {
    /*
    [self makePostCallForPage:USER_SIGNUP
                   withParams:@{
                                @"fname":self.firstNameTxt.text,
                                @"lname":self.lastNameTxt.text,
                                @"password":self.passwordTxt.text,
                                @"phone":self.phonenumberTxt.text,
                                @"email":self.emailTxt.text,
                                @"username":self.userNameTxt.text,
                                @"type":@"1",
                                @"ios_token":@"1234"
                                
                                }
              withRequestCode:1];
     */
  

}



- (void)parseResult:(id)result withCode:(int)reqeustCode {
    if ([[result objectForKey:@"status"] isEqualToString:@"Failed"]) {
        NSLog(@"%@",result);
        [self showErrorAlertWithMessage:[result objectForKey:@"message"]];
    } else {
        
        TabBarViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarViewController"];
        [self.navigationController pushViewController:newView animated:YES];
        
    }

  }

@end
