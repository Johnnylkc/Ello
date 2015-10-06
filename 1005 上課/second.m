//
//  second.m
//  1005 上課
//
//  Created by 劉坤昶 on 2015/10/6.
//  Copyright © 2015年 劉坤昶 Johnny. All rights reserved.
//

#import "second.h"


@interface second ()

- (IBAction)buttonLogin:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *ccc;

@property (weak, nonatomic) IBOutlet UITextField *ddd;

@property (weak, nonatomic) IBOutlet UITextField *eee;




@end

@implementation second

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    _ccc.delegate = self ;
    _ddd.delegate = self ;
    _eee.delegate = self ;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonLogin:(id)sender {
    
    // 建立 MainViewController 的實體
    second *mainVC =[self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    
    // 切換畫面
    [self presentViewController:mainVC animated:NO completion:nil];
}



- (void) textFieldDidBeginEditing:(UITextField *)textField{
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.25];
    
    [self.view setFrame:CGRectMake(0, -140 , self.view.frame.size.width, self.view.frame.size.height)];
    
    [UIView commitAnimations];
    
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.25];
    
    [self.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [UIView commitAnimations];
    
    
}

- (IBAction)signupTap:(id)sender {
    
    [self.view endEditing:YES];
    
}







@end
