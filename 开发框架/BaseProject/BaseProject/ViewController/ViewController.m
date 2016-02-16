//
//  ViewController.m
//  BaseProject
//
//  Created by hc1 on 16/2/15.
//  Copyright © 2016年 hc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UserManage sharedUserManage].userName = @"cjem";
    [UserManage sharedUserManage].userAccount = @"cefs";
    [UserManage sharedUserManage].userPassword = @"dfds";
    [UserManage sharedUserManage].userName = @"chen";
    [UserManage sharedUserManage].userAccount = nil;
    
    NSString *path=NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES).firstObject;
    NSLog(@"library path:%@", path);
    [[UserManage sharedUserManage]cleanAllUseData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
