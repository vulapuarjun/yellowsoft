//
//  FindALaywerViewController.m
//  Lawyers
//
//  Created by Balakrishna Nadella on 22/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "FindALaywerViewController.h"
#import "FindALaywerTableViewCell.h"
@interface FindALaywerViewController ()

@end

@implementation FindALaywerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *anotherButton1 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"left-arrow"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = anotherButton1;
}
-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FindALaywerTableViewCell *cell=[_findALaywerTable dequeueReusableCellWithIdentifier:@"FindALaywerTable" forIndexPath:indexPath];
    cell.laywerPic.layer.cornerRadius=75/2;
    cell.laywerPic.clipsToBounds=YES;
    cell.laywerPic.layer.borderColor = [UIColor grayColor].CGColor;
    cell.laywerPic.layer.borderWidth = 2.0f;
    cell.laywerPic.image=[UIImage imageNamed:@"download.jpeg"];
    cell.laywerName.text=@"Arjun LLB";
    cell.laywerDisc.text=@"Arjun  balu nani chandu radha are in yellowsoft";
    return cell;
    
}

- (IBAction)filterBtnAction:(id)sender {
}
@end
