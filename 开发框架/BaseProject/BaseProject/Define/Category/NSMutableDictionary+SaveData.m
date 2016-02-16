//
//  NSMutableDictionary+SaveData.m
//  Market
//
//  Created by YAO on 15/10/4.
//  Copyright (c) 2015年 YAO. All rights reserved.
//

#import "NSMutableDictionary+SaveData.h"

@implementation NSMutableDictionary (SaveData)

-(BOOL)writeToPlistFile:(NSString*)filename {
    
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:self];
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * path = [documentsDirectory stringByAppendingPathComponent:filename];
    BOOL didWriteSuccessfull = [data writeToFile:path atomically:YES];
    return didWriteSuccessfull;
}

-(NSMutableArray *)readFromPlistFile:(NSString*)filename {
    
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * path = [documentsDirectory stringByAppendingPathComponent:filename];
    NSData * data = [NSData dataWithContentsOfFile:path];
    return  [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

@end
