//
//  NSMutableDictionary+SaveData.h
//  Market
//
//  Created by YAO on 15/10/4.
//  Copyright (c) 2015年 YAO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (SaveData)

-(BOOL)writeToPlistFile:(NSString*)filename;

-(NSMutableArray *)readFromPlistFile:(NSString*)filename;

@end
