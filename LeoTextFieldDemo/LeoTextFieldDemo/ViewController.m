//
//  ViewController.m
//  LeoTextFieldDemo
//
//  Created by Leo.Chen on 2016/12/12.
//  Copyright © 2016年 Leo.Chen. All rights reserved.
//

#import "ViewController.h"
#import "LeoTextField.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lbCount = [[UILabel alloc] initWithFrame:CGRectMake(80, 100, 180, 18)];
    lbCount.text = @"0";
    lbCount.textColor = [UIColor blackColor];
    [self.view addSubview:lbCount];
    
    
    LeoTextField *tf = [[LeoTextField alloc] initWithFrame:CGRectMake(80, 200, 180, 50)];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.limitLength = 10;
    [self.view addSubview:tf];
    
    [tf addTextDidChangeBlock:^(LeoTextField *textField) {
        
        lbCount.text = [NSString stringWithFormat:@"%ld", textField.text.length];
        
    }];
    
    [tf addTextLengthDidLimitBlock:^(LeoTextField *textField) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"到达最大长度了" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
        
    }];
    
    
    
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
