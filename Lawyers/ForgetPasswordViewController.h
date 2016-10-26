//
//  ForgetPasswordViewController.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 26/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface ForgetPasswordViewController : BaseViewController
@property (strong, nonatomic) IBOutlet UITextField *emailTxtField;
@property (strong, nonatomic) IBOutlet UIButton *OkBtn;
- (IBAction)OkBtnAction:(id)sender;

@end
