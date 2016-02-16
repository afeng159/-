//
//  NSString+DateTimeCString.h
//  HZTelOA
//
//  Created by YAO on 15/12/14.
//  Copyright (c) 2015年 YAO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DateTimeCString)

+ (NSString *) timeConverntString:(NSString *)timeString;

+ (NSString *) timeConverntStringWithYYMM:(NSString *)timeString;


@end

