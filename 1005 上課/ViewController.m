//
//  ViewController.m
//  1005 上課
//
//  Created by 劉坤昶 on 2015/10/5.
//  Copyright © 2015年 劉坤昶 Johnny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

  @end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backgroundTap:(id)sender {
    
    [self.view endEditing:YES];
    
    
    
    
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






@end
