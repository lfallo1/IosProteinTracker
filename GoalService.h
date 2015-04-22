//
//  ProteinGoalUtil.h
//  ProteinTracker
//
//  Created by Lance Fallon on 4/20/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

@protocol GoalService <NSObject>
@required
@property NSInteger goal;

-(id)initWithGoal:(NSInteger)g;
-(BOOL)didReachGoal:(int)amount;
@end