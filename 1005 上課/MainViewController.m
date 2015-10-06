//
//  MainViewController.m
//  1005 上課
//
//  Created by 劉坤昶 on 2015/10/6.
//  Copyright © 2015年 劉坤昶 Johnny. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()


@property (weak, nonatomic) IBOutlet UITextField *aaa;

@property (weak, nonatomic) IBOutlet UITextField *bbb;




@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _aaa.delegate = self ;
    _bbb.delegate = self ;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonCreat:(id)sender {
    // 建立 MainViewController 的實體
    MainViewController *mainVC =[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    
    // 切換畫面
    [self presentViewController:mainVC animated:NO completion:nil];
    
}




- (void) textFieldDidBeginEditing:(UITextField *)textField{
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.25];
    
    [self.view setFrame:CGRectMake(0, -120 , self.view.frame.size.width, self.view.frame.size.height)];
    
    [UIView commitAnimations];
    
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.25];
    
    [self.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [UIView commitAnimations];
    
    
}


- (IBAction)loginTop:(id)sender {
    
    [self.view endEditing:YES] ;
    
}







@end
