//
//  LaywerSignupViewController.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 21/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LaywerSignupViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
;
@property (strong, nonatomic) IBOutlet UITableView *laywerSignupTable;

@end
