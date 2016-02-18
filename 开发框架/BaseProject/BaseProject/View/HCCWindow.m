//
//  HCCWindow.m
//  HCCAkertView
//
//  Created by hc1 on 16/1/20.
//  Copyright © 2016年 hc. All rights reserved.
//

#import "HCCWindow.h"
#define kScreenH [UIScreen mainScreen].bounds.size.height
#define kScreenW [UIScreen mainScreen].bounds.size.width
@interface HCCWindow()
@property (strong, nonatomic) UIView *alertView;
@end

@implementation HCCWindow
- (void)show{
    self.backgroundColor = [UIColor clearColor];
    self.hidden = NO;
    self.windowLevel = 1001;
    
    //背景黑色图
    UIView *backgroundView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    backgroundView.backgroundColor = [UIColor blackColor];
    backgroundView.alpha = 0.2;
    
    [self addSubview:backgroundView];
    
    //alertView
    self.alertView = (UIView *)[[NSBundle mainBundle]loadNibNamed:@"alertView" owner:nil options:nil].lastObject;
    [self settingAlertView];
    
    //设置alertView的边角 不一定需要
    self.alertView.layer.cornerRadius = 15;
    self.alertView.layer.masksToBounds = YES;
    
    //设置alertView的大小
    self.alertView.frame = CGRectMake(0, 0, 250, 400);
    self.alertView.center = self.center;
    [self addSubview: self.alertView];
    
    //alertView的颜色，当有背景图是可以设为透明
    self.alertView.backgroundColor = [UIColor whiteColor];
    
    //动画
     self.alertView.layer.transform = CATransform3DMakeScale(1.3f, 1.3f, 1.0);
    [UIView animateWithDuration:0.2f delay:0.0 options:UIViewAnimationOptionCurveEaseInOut
     animations:^{                         _alertView.layer.transform = CATransform3DMakeScale(1, 1, 1);
                     }
                     completion:NULL
     ];

    
    
    
}
- (void)settingAlertView{
    /**
     *  在这个里面可以自定义alertview
     */
}
- (void)high{
    self.hidden = YES;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
