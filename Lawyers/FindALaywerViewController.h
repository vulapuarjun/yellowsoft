//
//  FindALaywerViewController.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 22/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindALaywerViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *findALaywerTable;
@property (strong, nonatomic) IBOutlet UIButton *filterBtn;
- (IBAction)filterBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *titleLbl;

@end
