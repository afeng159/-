//
//  HCCWindow.h
//  HCCAkertView
//
//  Created by hc1 on 16/1/20.
//  Copyright © 2016年 hc. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  1.这是一个可以高度自定义的alertview，界面非常的简单
    2.在使用的时候，只要在alertview.xib上进行自定义，或者通过代码来自定义AlertView就行；
    3.在使用的时候，我们必须创建出该类的实例，并且最好使其作为属性，防止其在作用域后被释放
 */
@interface HCCWindow : UIWindow
- (void)show;
- (void)high;
@end
