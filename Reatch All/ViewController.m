//
//  ViewController.m
//  Reatch All
//
//  Created by apple on 4/4/18.
//  Copyright © 2018 apple. All rights reserved.
//

#import "ViewController.h"
#import "ACFloatingTextField.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet ACFloatingTextField *textFieldUsername;
@property (weak, nonatomic) IBOutlet ACFloatingTextField *textFieldPassword;

@end

@implementation ViewController

- (IBAction)showErrorTap:(UIButton *)sender {
    [_textFieldPassword showErrorWithText:@"Password should not less then 6 characters."];
    [_textFieldUsername showErrorWithText:@"Username should not less then 10 Numbers."];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [_textFieldUsername becomeFirstResponder];
    
}

#pragma mark  UITextfield Delegates
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return true;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

