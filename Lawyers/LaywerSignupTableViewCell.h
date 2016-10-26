//
//  LaywerSignupTableViewCell.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 21/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppTableViewCell.h"
@interface LaywerSignupTableViewCell :AppTableViewCell  
@property (strong, nonatomic) IBOutlet UIImageView *typeImg;
@property (strong, nonatomic) IBOutlet UILabel *DiscLbl;
@property (strong, nonatomic) IBOutlet UILabel *NameLbl;
@end
