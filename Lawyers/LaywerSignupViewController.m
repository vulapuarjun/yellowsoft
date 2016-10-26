//
//  LaywerSignupViewController.m
//  Lawyers
//
//  Created by Balakrishna Nadella on 21/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "LaywerSignupViewController.h"
#import "LaywerSignupTableViewCell.h"
@interface LaywerSignupViewController ()

@end

@implementation LaywerSignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LaywerSignupTableViewCell *cell=[_laywerSignupTable dequeueReusableCellWithIdentifier:@"LaywerSignupCell" forIndexPath:indexPath];
    cell.typeImg.layer.cornerRadius=50;
    cell.typeImg.clipsToBounds=YES;
    cell.typeImg.layer.borderColor = [UIColor grayColor].CGColor;
    cell.typeImg.layer.borderWidth = 2.0f;
    cell.typeImg.image=[UIImage imageNamed:@"yellow-circle"];
    cell.DiscLbl.text=@"arjun balu prudhvi chandu radha,arjun balu prudhvi chandu radha,arjun balu prudhvi chandu radha,arjun balu prudhvi chandu radha,arjun balu prudhvi chandu radha,";
    if(indexPath.row==0){
        cell.NameLbl.text=@"BROZNE";
    } else  if(indexPath.row==1){
        cell.NameLbl.text=@"GOLD";
    }
    else  if(indexPath.row==2){
        cell.NameLbl.text=@"PLATINUM";
    }
    return cell;
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
