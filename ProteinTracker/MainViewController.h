//
//  ViewController.h
//  ProteinTracker
//
//  Created by Lance Fallon on 4/19/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"
#import "HelpViewController.h"
#import "GoalService.h"

@interface MainViewController : UIViewController
{
    int total;
    NSMutableArray *amountHistory;
}
@property id<GoalService> goalServiceDelegate;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountText;

- (IBAction)addProtein:(id)sender;

- (IBAction)unwindToMain:(UIStoryboardSegue *)segue;

-(void)goalChanged:(NSNotification *)notification;

@end
