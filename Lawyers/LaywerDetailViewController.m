//
//  LaywerDetailViewController.m
//  Lawyers
//
//  Created by Balakrishna Nadella on 22/10/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "LaywerDetailViewController.h"
#import "LaywerDetail41TableViewCell.h"
#import "LaywerDetail31TableViewCell.h"
@interface LaywerDetailViewController ()

@end

@implementation LaywerDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *image = [UIImage imageNamed:@"page-logo"];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:image];
    
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"green-icon"] style:UIBarButtonItemStylePlain target:self action:nil];
    UIBarButtonItem *anotherButton1 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"left-arrow"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = anotherButton1;

    self.navigationItem.rightBarButtonItem = anotherButton;
    
    [_Scrollview setContentSize:CGSizeMake(self.view.frame.size.width, 700)];
    _laywerImg.layer.cornerRadius=40;
    _laywerImg.clipsToBounds=YES;
   _laywerImg.layer.borderColor = [UIColor grayColor].CGColor;
    _laywerImg.layer.borderWidth = 2.0f;
    _laywerImg.image=[UIImage imageNamed:@"download.jpeg"];
    _laywerNameLbl.text=@"Arjun LLB";
    _discTextview.text=@"we all are working under single roof,we all are working under single roof,we all are working under single roof,we all are working under single r";

}
-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(tableView==_areasTableview){
        return 8;
    }else{
        return 2;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(tableView==_areasTableview){
    LaywerDetail31TableViewCell *cell=[_areasTableview dequeueReusableCellWithIdentifier:@"LaywerDetailsCell31" forIndexPath:indexPath];
   
    cell.label1.text=[NSString stringWithFormat:@"%ld. %@",2*indexPath.row+1,@"Development"];
    cell.label2.text=[NSString stringWithFormat:@"%ld. %@",2*indexPath.row+2,@"Distribution"];
    return cell;
    }
    else{
        LaywerDetail41TableViewCell *cell=[_reviewsTableview dequeueReusableCellWithIdentifier:@"LaywerDetailsCell41" forIndexPath:indexPath];
        cell.userImgPic.layer.cornerRadius=15;
        cell.userImgPic.clipsToBounds=YES;
        cell.userImgPic.layer.borderColor = [UIColor grayColor].CGColor;
        cell.userImgPic.layer.borderWidth = 2.0f;
        cell.userImgPic.image=[UIImage imageNamed:@"download.jpeg"];
        cell.nameLbl.text=@"yellowsoft";
        cell.timeLbl.text=@"2 MONTHS AGO";
        cell.discLbl.text=@"we all are working under single roof";
        return cell;

    }
    
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
