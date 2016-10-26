//
//  PopViewControllerDelegate.h
//  Cavaratmall
//
//  Created by Amit Kulkarni on 30/07/15.
//  Copyright (c) 2015 iMagicsoftware. All rights reserved.
//

#ifndef Cavaratmall_PopViewControllerDelegate_h
#define Cavaratmall_PopViewControllerDelegate_h

@class AppCategory;
@protocol PopViewControllerDelegate<NSObject>
@optional
- (void)cancelButtonClicked:(UIViewController *)secondDetailViewController;
- (void)cancelWithSelectingCategory:(AppCategory *)cat withVC:(UIViewController *)vc;
- (void)cancelWithCriteria:(int)rating withStatus:(NSString *)status withPayment:(NSString *)payment deliveryTime:(NSString *)time;
- (void)removeFilter;
@end

#endif
