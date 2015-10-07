//
//  ViewController.m
//  1005 上課
//
//  Created by 劉坤昶 on 2015/10/5.
//  Copyright © 2015年 劉坤昶 Johnny. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailText01;

@property (weak, nonatomic) IBOutlet UITextField *usernameText02;

@property (weak, nonatomic) IBOutlet UITextField *passwordText03;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


//    self.signUpBottom.constant = 100 ;
//    self.loginBottom.constant = 0 ;
//    self.loginLeft.constant = 0 ;
//    


   

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






- (IBAction)buttonLogin:(id)sender {
   
    MainViewController *mainVC =[self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    
    
    [self presentViewController:mainVC animated:NO completion:nil];

    
}





















@end
