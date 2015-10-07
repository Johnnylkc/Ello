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

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelHeight;


@property (weak, nonatomic) IBOutlet UITextField *emailText;

@property (weak, nonatomic) IBOutlet UILabel *labelEmailWarning;





- (IBAction)buttonCreat:(id)sender;




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

//////以下是鍵盤出現 畫面上移

- (void) textFieldDidBeginEditing:(UITextField *)textField{
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.3];
    
    [self.view setFrame:CGRectMake(0, -180 , self.view.frame.size.width, self.view.frame.size.height)];
    
    [UIView commitAnimations];
    
}


- (void)textFieldDidEndEditing:(UITextField *)textField {
    
    
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:0.3];
    
    [self.view setFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    [UIView commitAnimations];
    
    
}

/////////////


- (IBAction)signupTap:(id)sender {
    
    [self.view endEditing:YES];
    
}








- (IBAction)buttonCreat:(id)sender {
    
//
//    NSString *emailText01 = _emailText.text ;
//
//    if ([emailText01 rangeOfString:@".com"].length > 0 ){
//        self.labelHeight.constant = 0 ;
//        
//    }else{
//        self.labelHeight.constant = 6 ;
//        
//        
//        _labelEmailWarning.text = [ NSString stringWithFormat:@"%@不是我要的答案",emailText01];
//
//    }
  
    if([self isValidateEmail:self.emailText.text]){
        self.labelHeight.constant = 0 ;
    }else{
        self.labelHeight.constant = 20;

    }

}

////下面是判斷email的方法
-(BOOL)isValidateEmail:(NSString *)email

{
    
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailRegex];
    
    return [emailTest evaluateWithObject:email];
    
}




@end
