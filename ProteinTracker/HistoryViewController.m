//
//  HistoryViewController.m
//  ProteinTracker
//
//  Created by Lance Fallon on 4/20/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"LOADED THE HISTORY PAGE VIEW!!!!!!!!!!!!!!!!!!");
    NSMutableString *text = [[NSMutableString alloc]init];
    for(NSNumber *n in history){
        [text appendFormat:@"%@, ",n.stringValue];
    }
    self.historyLabel.text = text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setHistory:(NSMutableArray *)h{
    history = h;
}

-(void)clearHistory:(id)sender{
    history = [[NSMutableArray alloc]init];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"helpSegue"]){
        HelpViewController *controller = (HelpViewController *)segue.destinationViewController;
        [controller setHelpMessage:@"View protein amounts that have been previously entered"];
    }
}

@end
