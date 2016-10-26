
//
//  LaywerDetailViewController.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 22/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LaywerDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *areasTableview;
@property (strong, nonatomic) IBOutlet UITableView *reviewsTableview;
@property (strong, nonatomic) IBOutlet UIScrollView *Scrollview;
@property (strong, nonatomic) IBOutlet UIButton *calBtn;
@property (strong, nonatomic) IBOutlet UIButton *mailBtn;
@property (strong, nonatomic) IBOutlet UIButton *locationBtn;
@property (strong, nonatomic) IBOutlet UIButton *shareBtn;
@property (strong, nonatomic) IBOutlet UIImageView *bgImg;
@property (strong, nonatomic) IBOutlet UIImageView *laywerImg;
@property (strong, nonatomic) IBOutlet UILabel *laywerNameLbl;
@property (strong, nonatomic) IBOutlet UITextView *discTextview;
@property (strong, nonatomic) IBOutlet UILabel *aboutCompanyLbl;
@property (strong, nonatomic) IBOutlet UILabel *practiceAreasLbl;
@property (strong, nonatomic) IBOutlet UILabel *reviewsLbl;

@end
