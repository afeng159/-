//
//  AFAppDotNetApiClient.m
//  基础板块
//
//  Created by hc1 on 15/12/17.
//  Copyright © 2015年 hc. All rights reserved.
//

#import "AFAppDotNetApiClient.h"
#import "URLManager.h"
@implementation AFAppDotNetApiClient

+ (instancetype)sharedClient {
    AFAppDotNetApiClient *shareClient = [[AFAppDotNetApiClient alloc]initWithBaseURL:[NSURL URLWithString:[URLManager sharedURLManager].baseURL]];
    return shareClient;
}

/** 重写initWithBaseURL方法 */
- (instancetype)initWithBaseURL:(NSURL *)url{
    if ([super initWithBaseURL:url]) {
/******************* 请求的一些设置 *****************************/
        
        //请求数据类型
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        
        //接受数据类型
        self.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", @"application/json", @"text/json", @"text/javascript", @"text/plain", nil];
        
        //请求最长时间
        self.requestSerializer.timeoutInterval = 30.0;
        
        //添加表头
        [self.requestSerializer setValue:@"iphone" forHTTPHeaderField:@"terminalid"];
        [self.requestSerializer setValue:@"ios" forHTTPHeaderField:@"appId"];
    }
    return self;
}

- (void)getAsynchronous:(NSString *)path parameter:(NSDictionary *)dic{
    [self GET:path parameters:dic success:^(AFHTTPRequestOperation *operation , id responseObject) {
        
        NSDictionary *dict = (NSDictionary *)responseObject;
        if (dict && ![dict isEqual:[NSNull null]]) {
            
            if ([self.delegate respondsToSelector:@selector(httpRequestFinished:result:)]) {
                [self.delegate httpRequestFinished:self result:dict];
            }
        }
        
    }failure:^(AFHTTPRequestOperation *operation , NSError *error) {
        
        if ([self.delegate respondsToSelector:@selector(httpRequestFailed:error:)]) {
            [self.delegate httpRequestFailed:self error:error];
        }
    }];
    
    if ([self.delegate respondsToSelector:@selector(httpRequestStarted:)]) {
        [self.delegate httpRequestStarted:self];
    }

}

- (void)putAsynchronous:(NSString *)path parameter:(id)dic
{
    [self PUT:path parameters:dic success:^(AFHTTPRequestOperation *operation , id responseObject) {
        
        NSDictionary *dict = (NSDictionary *)responseObject;
        if (dict && (![dict isEqual:[NSNull null]])) {
            if ([self.delegate respondsToSelector:@selector(httpRequestFinished:result:)]) {
                [self.delegate httpRequestFinished:self result:dict];
                
            }
        }
    }failure:^(AFHTTPRequestOperation *operation , NSError *error) {
        
        if ([self.delegate respondsToSelector:@selector(httpRequestFailed:error:)]) {
            
            [self.delegate httpRequestFailed:self error:error];
        }
        
    }];
    
    if ([self.delegate respondsToSelector:@selector(httpRequestStarted:)]) {
        
        [self.delegate httpRequestStarted:self];
    }
}


- (void)postAsynchronous:(NSString *)path parameter:(id)dic
{
    [self POST:path parameters:dic success:^(AFHTTPRequestOperation *operation , id responseObject) {
        
        NSDictionary *dict = (NSDictionary *)responseObject;
        
        if (dict && (![dict isEqual:[NSNull null]])) {
            
            if ([self.delegate respondsToSelector:@selector(httpRequestFinished:result:)]) {
                [self.delegate httpRequestFinished:self result:dict];
            }
        }
        
    }failure:^(AFHTTPRequestOperation *operation , NSError *error) {
    
        if ([self.delegate respondsToSelector:@selector(httpRequestFailed:error:)]) {
            [self.delegate httpRequestFailed:self error:error];
        }
        
    }];
    
    if ([self.delegate respondsToSelector:@selector(httpRequestStarted:)]) {
        
        [self.delegate httpRequestStarted:self];
    }
}

//- (void)postAsynchronous2:(NSString *)path parameter:(id)dic
//{
//    NSMutableDictionary *iejf = [[NSMutableDictionary alloc] init];
//    [iejf setValue:dic forKey:@"order"];
//    
//    NSString *jsonString = nil;
//    
//    if ([NSJSONSerialization isValidJSONObject:iejf]) {
//        
//        NSError *error;
//        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:iejf options:NSJSONWritingPrettyPrinted error:&error];
//        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
//    }
//    
//    
//    
//    [self POST:path parameters:jsonString success:^(AFHTTPRequestOperation *operation , id responseObject) {
//        
//        NSDictionary *dict = (NSDictionary *)responseObject;
//        
//        if (dict && ![dict isEqual:[NSNull null]]) {
//            
//            if ([self.delegate respondsToSelector:@selector(httpRequestFinished:result:)]) {
//                
//                [self.delegate httpRequestFinished:self result:dict];
//            }
//        }
//        
//    }failure:^(AFHTTPRequestOperation *operation , NSError *error) {
//        
//        
//        if ([self.delegate respondsToSelector:@selector(httpRequestFailed:error:)]) {
//            
//            [self.delegate httpRequestFailed:self error:error];
//        }
//        
//    }];
//    
//    if ([self.delegate respondsToSelector:@selector(httpRequestStarted:)]) {
//        
//        [self.delegate httpRequestStarted:self];
//    }
//}

@end
