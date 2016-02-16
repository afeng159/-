//
//  UserManage.m
//  HZTelOA
//
//  Created by Lance_xu on 15/12/1.
//  Copyright © 2015年 YAO. All rights reserved.
//

#import "UserManage.h"

@implementation UserManage
//@synthesize userName = _userName;
singleton_implementation(UserManage)

/**
 *  用户名
 */
- (void)setUserName:(NSString *)userName{
     NSString *lasetUserName = [[NSUserDefaults standardUserDefaults]objectForKey:@"userName"];
    if (userName == nil) {
        //意味着清除该数据
        if (lasetUserName) {
                [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userName"];
                [[NSUserDefaults standardUserDefaults]synchronize];
            }
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userName forKey:@"userName"];
                [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)userName{
  NSString *str = [[NSUserDefaults standardUserDefaults]objectForKey:@"userName"];
    if (str) {
        return str;
    }
    return @"";
}
/**
 *  用户账号
 */
- (void)setUserAccount:(NSString *)userAccount{
    NSString *lasetuserAccount = [[NSUserDefaults standardUserDefaults]objectForKey:@"userAccount"];
    if (userAccount == nil) {
        //意味着清除该数据
        if (lasetuserAccount) {
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userAccount"];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userAccount forKey:@"userAccount"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
- (NSString *)userAccount{
    NSString *str = [[NSUserDefaults standardUserDefaults]objectForKey:@"userAccount"];
    if (str) {
        return str;
    }
    return @"";
}
/**
 *  用户密码
 */
- (void)setUserPassword:(NSString *)userPassword{
    NSString *lasetuserPassword = [[NSUserDefaults standardUserDefaults]objectForKey:@"userPassword"];
    if (userPassword == nil) {
        //意味着清除该数据
        if (lasetuserPassword) {
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"userPassword"];
            [[NSUserDefaults standardUserDefaults]synchronize];
        }
        
    }else{
        [[NSUserDefaults standardUserDefaults]setObject:userPassword forKey:@"userPassword"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}

/**
 *  清除所有数据
 */
- (void)cleanAllUseData{
    self.userAccount = nil;
    self.userName = nil;
    self.userPassword = nil;
}

@end
