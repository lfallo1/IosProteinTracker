//
//  ProteinGoalService.m
//  ProteinTracker
//
//  Created by Lance Fallon on 4/20/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "ProteinGoalService.h"

@implementation ProteinGoalService

@synthesize goal;

-(id)initWithGoal:(NSInteger)g{
    self = [super init];
    if(self){
        [self setGoal:g];
    }
    return self;
}

-(BOOL)didReachGoal:(int)amount{
    int g = (int)self.goal;
    if(amount >= g){
        return YES;
    }
    return NO;
}
@end
