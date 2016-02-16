//
//  NSMutableArray+ItemData.h
//  EOffice
//
//  Created by Su on 13-12-21.
//  Copyright (c) 2013年 Su. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (ItemData)

-(BOOL)writeToPlistFile:(NSString*)filename;
-(NSMutableArray *)readFromPlistFile:(NSString*)filename;
@end
