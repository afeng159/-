//
//  NSString+DateTimeCString.m
//  HZTelOA
//
//  Created by YAO on 15/12/14.
//  Copyright (c) 2015年 YAO. All rights reserved.
//

#import "NSString+DateTimeCString.h"

@implementation NSString (DateTimeCString)

+ (NSString *) timeConverntString:(NSString *)timeString {
    
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.zzz"];
    NSDate* inputDate = [inputFormatter dateFromString:timeString];
    
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"yyy/MM/dd"];
    NSString *str = [outputFormatter stringFromDate:inputDate];
    
    if (str)
        return str;
    else
        return @"";
}

+ (NSString *) timeConverntStringWithYYMM:(NSString *)timeString {
    
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
     //[inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"cn_ZH"] ];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss +0000"];
    NSDate* inputDate = [inputFormatter dateFromString:timeString];
    
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"yyy-MM"];
    NSString *str = [outputFormatter stringFromDate:inputDate];
    
    if (str)
        return str;
    else
        return @"";
}

@end
