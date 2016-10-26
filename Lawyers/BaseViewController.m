//
//  BaseViewController.m
//  StreetWhere
//
//  Created by Amit Kulkarni on 10/04/15.
//  Copyright (c) 2015 Mobentia. All rights reserved.
//

#import "BaseViewController.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"
#import "Utils.h"
#import "Common.h"

@interface BaseViewController () <UIGestureRecognizerDelegate>

@end

@implementation BaseViewController
/*
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

void reloadRTLViewAndSubviews(UIView *view)
{
    //view.transform = CGAffineTransformMakeRotation(180 * 0.0174532925);
    reloadRTLViews(@[view]);
    reloadRTLViews([view subviews]);
}

void reloadRTLViews(NSArray *views)
{
    if (isRTL())
    {
        [views enumerateObjectsUsingBlock:^(UIView* view,
                                            NSUInteger idx,
                                            BOOL * stop)
         {
             view.semanticContentAttribute = UISemanticContentAttributeForceRightToLeft;
         }];
    }
    else
    {
        [views enumerateObjectsUsingBlock:^(UIView* view,
                                            NSUInteger idx,
                                            BOOL * stop)
         {
             view.semanticContentAttribute = UISemanticContentAttributeForceLeftToRight;
         }];
    }
}

BOOL isRTL()
{
    return isRTL_app();
}

BOOL isRTL_device()
{
    BOOL isRTL = ([NSLocale characterDirectionForLanguage:[[NSLocale preferredLanguages] objectAtIndex:0]] == NSLocaleLanguageDirectionRightToLeft);
    
    return isRTL;
}

BOOL isRTL_scheme()
{
    BOOL isRTL = ([UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[UIView new].semanticContentAttribute] == UIUserInterfaceLayoutDirectionRightToLeft);
    
    return isRTL;
}

BOOL isRTL_app()
{
    return [[Utils getLanguage] isEqualToString:KEY_LANGUAGE_AR];
}


- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
    ECSlidingViewController *slidingViewController = self.slidingViewController;
    if ([[Utils getLanguage] isEqualToString:KEY_LANGUAGE_EN]) {
        if (slidingViewController.currentTopViewPosition == ECSlidingViewControllerTopViewPositionAnchoredRight) {
            return YES;
        }
    } else {
        if (slidingViewController.currentTopViewPosition == ECSlidingViewControllerTopViewPositionAnchoredLeft) {
            return YES;
        }
    }
    
    CGFloat velocityX = [gestureRecognizer velocityInView:self.slidingViewController.view].x;

    BOOL isMovingRight = velocityX > 0;
    if ([[Utils getLanguage] isEqualToString:KEY_LANGUAGE_EN]) {
        return isMovingRight;
    } else {
        return !isMovingRight;
    }
}
*/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self preferredStatusBarStyle];

    
    self.refreshControl = [[UIRefreshControl alloc] init];
    self.refreshControl.tintColor = [UIColor blackColor];
    [self.refreshControl addTarget:self
                            action:@selector(refreshItems)
                  forControlEvents:UIControlEventValueChanged];
    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(searchAds)];

    self.navigationController.navigationBar.opaque = YES;
    self.navigationController.navigationBar.translucent = NO;
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,  nil]];
    
    /*
    if ([[Utils getLanguage] isEqualToString:KEY_LANGUAGE_EN]) {
        [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont boldSystemFontOfSize:17], NSFontAttributeName, nil]];
        
    } else if ([[Utils getLanguage] isEqualToString:KEY_LANGUAGE_AR]) {
        [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont fontWithName:@"GE Flow" size:17], NSFontAttributeName, nil]];
    }
    */
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
     
    
//    [[UITableViewCell appearance] setTintColor:[UIColor colorWithRed:0.161  green:0.569  blue:0.718 alpha:1]];
    
    self.dismissProgress = YES;
}

- (void)showSideMenu {
   }

- (void)refreshItems {
}

/*
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar1 {
    [searchBar resignFirstResponder];
    searchBar.hidden = YES;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar1 {
    [searchBar resignFirstResponder];
    searchBar.hidden = YES;

//    SearchViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"searchads"];
//    vc.searchTerm = searchBar.text;
//    [self.navigationController pushViewController:vc animated:YES];
}

- (void)searchAds {
    if (!searchBar) {
        searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
        [searchBar setDelegate:self];
        [searchBar setShowsCancelButton:YES animated:YES];
        [self.view addSubview:searchBar];
        [self.view bringSubviewToFront:searchBar];
        
        // Remove the icon, which is located in the left view
        [UITextField appearanceWhenContainedIn:[UISearchBar class], nil].leftView = nil;
        
        // Give some left padding between the edge of the search bar and the text the user enters
        searchBar.searchTextPositionAdjustment = UIOffsetMake(10, 0);
    }
    searchBar.hidden = NO;
    [searchBar becomeFirstResponder];
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) makePostCallForPage:(NSString *)page
                  withParams:(NSDictionary *)params
             withRequestCode:(int)code {
    
    if (![Utils isOnline]) {
        [Utils showErrorAlertWithMessage:[MCLocalization stringForKey:@"internet_error"]];
        return;
    }
    
    requestCode = code;
    [self performSelectorOnMainThread:@selector(showHUD:) withObject:nil waitUntilDone:YES];
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithDictionary:params];
    [dictionary setValue:[[MCLocalization sharedInstance] language] forKey:@"lang"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager POST:[[Utils createURLForPage:page withParameters:dictionary] absoluteString] parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        [self.refreshControl endRefreshing];
        if (self.dismissProgress) [self hideHUD];
        [self parseResult:responseObject withCode:requestCode];
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        if (self.dismissProgress) [self hideHUD];
        NSLog(@"Error: %@", error);
    }];
}

- (void) makeGetCallForPage:(NSString *)page
                  withParams:(NSDictionary *)params
             withRequestCode:(int)code {
    
    if (![Utils isOnline]) {
        [Utils showErrorAlertWithMessage:[MCLocalization stringForKey:@"internet_error"]];
        return;
    }
    
    requestCode = code;
    [self performSelectorOnMainThread:@selector(showHUD:) withObject:nil waitUntilDone:YES];
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithDictionary:params];
    [dictionary setValue:[[MCLocalization sharedInstance] language] forKey:@"lang"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:[[Utils createURLForPage:page withParameters:dictionary] absoluteString] parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        [self.refreshControl endRefreshing];
        if (self.dismissProgress) [self hideHUD];
        [self parseResult:responseObject withCode:requestCode];

    } failure:^(NSURLSessionTask *operation, NSError *error) {
        if (self.dismissProgress) [self hideHUD];
        NSLog(@"Error: %@", error);
    }];
}

- (void) parseResult:(id) result withCode:(int)reqeustCode {
}

#pragma mark - textfield

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Alerts

- (void) showSuccessMessage:(NSString *)message {
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    [controller addAction:[UIAlertAction actionWithTitle:Localized(@"ok") style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:controller animated:YES completion:nil];
}

- (void) showErrorAlertWithMessage:(NSString *)message {
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    [controller addAction:[UIAlertAction actionWithTitle:Localized(@"ok") style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:controller animated:YES completion:nil];
}

#pragma mark - HUD

- (void) showHUD:(NSString *)labelText {
    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeGradient];
}

- (void) hideHUD {
    [SVProgressHUD dismiss];
}

- (void) makePostCallForPage:(NSString *)page
                  withParams:(NSDictionary *)params
                withCallback:(void (^)(id))resultCallback {
    
    if (![Utils isOnline]) {
        [Utils showErrorAlertWithMessage:[MCLocalization stringForKey:@"internet_error"]];
        return;
    }
    
    [self performSelectorOnMainThread:@selector(showHUD:) withObject:nil waitUntilDone:YES];
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithDictionary:params];
    [dictionary setValue:[[MCLocalization sharedInstance] language] forKey:@"lang"];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager POST:[[Utils createURLForPage:page withParameters:dictionary] absoluteString] parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        [self.refreshControl endRefreshing];
        if (self.dismissProgress) [self hideHUD];
        resultCallback(responseObject);
        
        //[self parseResult:responseObject withCode:requestCode];
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        if (self.dismissProgress) [self hideHUD];
        NSLog(@"Error: %@", error);
    }];
}

@end
