//
//  AppDelegate.m
//  Lawyers
//
//  Created by Balakrishna Nadella on 21/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "AppDelegate.h"
#import "Utils.h"
#import "Common.h"
@implementation MyNavigationBar

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize newSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width, 60);
    UIImage *image = [UIImage imageNamed:@"navigation_bar.png"];
    [self setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    self.barStyle = UIBarStyleBlackTranslucent;
    
    self.shadowImage = [UIImage new];
    self.translucent = YES;
    return newSize;
}

const CGFloat VFSNavigationBarHeightIncrease = 25.f;

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}

- (void)initialize {
    
    [self setTitleVerticalPositionAdjustment:-(VFSNavigationBarHeightIncrease) forBarMetrics:UIBarMetricsDefault];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSArray *classNamesToReposition = @[@"UINavigationButton"];
    
    for (UIView *view in [self subviews]) {
        
        if ([classNamesToReposition containsObject:NSStringFromClass([view class])]) {
            
            CGRect frame = [view frame];
            frame.origin.y -= VFSNavigationBarHeightIncrease;
            
            [view setFrame:frame];
        }
    }
}


- (UIBarPosition)barPosition {
    return UIBarPositionTopAttached;
}

@end

@implementation UILabel (Helper)
- (void)setSubstituteFontName:(NSString *)name UI_APPEARANCE_SELECTOR {
    self.font = [UIFont fontWithName:name size:self.font.pointSize];
}
@end

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:200.0f/255.0f green:153.0f/255.0f blue:70.0f/255.0f alpha:1]];


    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(void)reloadUI
{
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

}
@end
