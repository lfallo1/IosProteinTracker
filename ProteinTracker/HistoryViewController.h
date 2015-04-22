//
//  HistoryViewController.h
//  ProteinTracker
//
//  Created by Lance Fallon on 4/20/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HelpViewController.h"

@interface HistoryViewController : UIViewController
{
    NSMutableArray *history;
}

@property (weak, nonatomic) IBOutlet UILabel *historyLabel;
- (IBAction)clearHistory:(id)sender;

-(void)setHistory:(NSMutableArray*)h;

@end
