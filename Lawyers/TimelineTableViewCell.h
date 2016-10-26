//
//  TimelineTableViewCell.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 22/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimelineTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIButton *shareBtn;
- (IBAction)shareBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *titleLbl;
@property (strong, nonatomic) IBOutlet UITextView *discTxtview;
@property (strong, nonatomic) IBOutlet UIImageView *thumblineImage;
@property (strong, nonatomic) IBOutlet UILabel *timeLbl;
@property (strong, nonatomic) IBOutlet UILabel *dateLbl;
@property (strong, nonatomic) IBOutlet UIButton *readmoreBtn;
- (IBAction)readmoreBtnAction:(id)sender;

@end
