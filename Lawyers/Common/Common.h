//
//  Common.h
//  Cavaratmall
//
//  Created by Amit Kulkarni on 12/07/15.
//  Copyright (c) 2015 iMagicsoftware. All rights reserved.
//

#ifndef Cavaratmall_Common_h
#define Cavaratmall_Common_h

#import "AppDelegate.h"
#import "MCLocalization.h"

#define KEY_LANGUAGE_EN @"en"
#define KEY_LANGUAGE_AR @"ar"

#define Localized(string) [MCLocalization stringForKey:string]

#define APP_DELEGATE (AppDelegate *) [[UIApplication sharedApplication] delegate]

#define SERVER_URL @"http://clients.yellowsoft.in/lawyers/api"

#define USER_SIGNUP @"add-member.php"
#define USER_LOGIN @"login.php"

#define SYSTEM_VERSION_GREATER_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)

#endif
