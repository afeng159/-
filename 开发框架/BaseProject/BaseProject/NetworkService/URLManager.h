//
//  URLManager.h
//  基础板块
//
//  Created by hc1 on 15/12/17.
//  Copyright © 2015年 hc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
@interface URLManager : NSObject
/** 单例 */
singleton_interface(URLManager)

/** 下面可以写自己需要的接口名字 */

/** 基础URL */
@property (strong, nonatomic,readonly) NSString *baseURL;

@end
