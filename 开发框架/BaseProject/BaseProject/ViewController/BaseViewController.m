//
//  BaseViewController.m
//  Market
//
//  Created by YAO on 15/9/26.
//  Copyright (c) 2015年 YAO. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航栏不透明
    self.navigationController.navigationBar.translucent = NO;
    
    //设置返回按钮的图像
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_47"] style:UIBarButtonItemStyleDone target:self action:@selector(backBarButtonAction:)];
    
    //self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:125.0/255.0 green:125.0/255.0 blue:125.0/255.0 alpha:1];
    
}

- (void)backBarButtonAction:(id)sender {
    
    //if (self.navigationController.presentingViewController) {
        
      //  [self dismissViewControllerAnimated:YES completion:NULL];
        
   // }else {
        
        [self.navigationController popViewControllerAnimated:YES];
   // }
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
