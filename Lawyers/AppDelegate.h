//
//  AppDelegate.h
//  Lawyers
//
//  Created by Balakrishna Nadella on 21/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface MyNavigationBar : UINavigationBar
@end
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(void)reloadUI;
@end

