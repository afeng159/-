//
//  UserManage.h
//  HZTelOA
//
//  Created by Lance_xu on 15/12/1.
//  Copyright © 2015年 YAO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
//#define UserMessage @"UserMessage"

@interface UserManage : NSObject
singleton_interface(UserManage)
@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) NSString *userAccount;
@property (strong, nonatomic) NSString *userPassword;

- (void)cleanAllUseData;





@end
