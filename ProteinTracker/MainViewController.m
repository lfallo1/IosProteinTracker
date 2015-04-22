//
//  ViewController.m
//  ProteinTracker
//
//  Created by Lance Fallon on 4/19/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "MainViewController.h"
#import "ProteinGoalService.h"
#import "StringUtilities.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //create array to hold protein amounts
    amountHistory = [[NSMutableArray alloc]init];
    
    //get the goal the application settings
    NSInteger goal = [[NSUserDefaults standardUserDefaults] integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat:@"%li",(long)goal];
    
    //set the goalServiceDelege to an instance of ProteinGoalService
    [self setGoalServiceDelegate:[[ProteinGoalService alloc]initWithGoal:goal]];
    
    //setup notification for settings changed
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(goalChanged:) name:NSUserDefaultsDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)addProtein:(id)sender {
    
    if([StringUtilities isNumber:self.amountText.text]){
        total += self.amountText.text.intValue;
        self.totalLabel.text = [NSString stringWithFormat:@"%i",total];
        [amountHistory addObject:[NSNumber numberWithInt:self.amountText.text.intValue]];
        self.amountText.text = @"";
        
        if ([self.goalServiceDelegate didReachGoal:total]){
            NSString *goalSuccessMsg = [NSString stringWithFormat: @"You've reached your goal of %li!", (long)[self.goalServiceDelegate goal]];
            
            UIAlertView *alertReachedGoal = [[UIAlertView alloc]initWithTitle:@"Success" message:goalSuccessMsg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            
            [alertReachedGoal show];
        }
    }
    else{
        UIAlertView *alertError = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Please enter a number" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alertError show];
    }
}

-(void)goalChanged:(NSNotification *)notification{
    NSInteger goal = [[NSUserDefaults standardUserDefaults] integerForKey:@"goal"];
    self.goalLabel.text = [NSString stringWithFormat:@"%li",(long)goal];
    [self.goalServiceDelegate setGoal:goal];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showHistory"]){
        HistoryViewController *controller = (HistoryViewController *)segue.destinationViewController;
        [controller setHistory:amountHistory];
    }
    else if([segue.identifier isEqualToString:@"helpSegue"]){
        HelpViewController *controller = (HelpViewController *)segue.destinationViewController;
        [controller setHelpMessage:@"Enter a protein amount, and try to reach your goal for the day!"];
    }
}

-(IBAction)unwindToMain:(UIStoryboardSegue *)segue{
    
}

@end