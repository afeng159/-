//
//  NSMutableArray+ItemData.m
//  EOffice
//
//  Created by Su on 13-12-21.
//  Copyright (c) 2013年 Su. All rights reserved.
//

#import "NSMutableArray+ItemData.h"

@implementation NSMutableArray (ItemData)


-(BOOL)writeToPlistFile:(NSString*)filename {
    
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:self];
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * path = [documentsDirectory stringByAppendingPathComponent:filename];
    BOOL didWriteSuccessfull = [data writeToFile:path atomically:YES];
    return didWriteSuccessfull;
}

-(NSMutableArray *)readFromPlistFile:(NSString*)filename {
    
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString * documentsDirectory = [paths objectAtIndex:0];
    NSString * path = [documentsDirectory stringByAppendingPathComponent:filename];
    NSData * data = [NSData dataWithContentsOfFile:path];
    return  [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

@end
