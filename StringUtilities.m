//
//  StringUtilties.m
//  ProteinTracker
//
//  Created by Lance Fallon on 4/20/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "StringUtilities.h"

@interface StringUtilities ()

@end

@implementation StringUtilities

+(BOOL)isNumber:(NSString *)str{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc]init];
    NSNumber *number = [formatter numberFromString:str];
    return !!number;
}

@end
