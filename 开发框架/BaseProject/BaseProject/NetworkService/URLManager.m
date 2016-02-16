//
//  URLManager.m
//  基础板块
//
//  Created by hc1 on 15/12/17.
//  Copyright © 2015年 hc. All rights reserved.
//

#import "URLManager.h"

@implementation URLManager
singleton_implementation(URLManager)

//改成自己的baseURL
- (NSString *)baseURL{
    return @"https://www.baidu.com";
}

@end
