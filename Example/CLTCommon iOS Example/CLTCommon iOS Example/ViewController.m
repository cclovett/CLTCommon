//
//  ViewController.m
//  CLTCommon iOS Example
//
//  Created by Cc on 15/4/2.
//  Copyright (c) 2015年 PinguoSDK. All rights reserved.
//

#import "ViewController.h"
#import "NSString+CLT_Unitils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *ss = @"";
    ss = [ss c_CLT_test];
    NSLog(@"123 = %@",ss);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
