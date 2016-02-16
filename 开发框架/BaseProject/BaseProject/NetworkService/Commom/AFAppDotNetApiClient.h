//
//  AFAppDotNetApiClient.h
//  基础板块
//
//  Created by hc1 on 15/12/17.
//  Copyright © 2015年 hc. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"
#import "URLManager.h"
@class AFAppDotNetApiClient;

@protocol AFAppDotNetApiClientDelegate  <NSObject>

- (void)httpRequestStarted:(AFAppDotNetApiClient *)client;

- (void)httpRequestFinished:(AFAppDotNetApiClient *)client result:(NSDictionary *)dic;

- (void)httpRequestFailed:(AFAppDotNetApiClient *)client error:(NSError *)error;

@end

@interface AFAppDotNetApiClient : AFHTTPRequestOperationManager

@property (weak, nonatomic) id <AFAppDotNetApiClientDelegate> delegate;

/** 注意，没有设为单例 */
+ (instancetype)sharedClient;

/** get */
- (void)getAsynchronous:(NSString *)path parameter:(NSDictionary *)dic;

/** post */
- (void)postAsynchronous:(NSString *)path parameter:(id)dic;

/** put */
- (void)putAsynchronous:(NSString *)path parameter:(id)dic;

/** post */
//- (void)postAsynchronous2:(NSString *)path parameter:(id)dic;

@end
