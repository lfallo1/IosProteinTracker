//
//  HelpViewController.m
//  ProteinTracker
//
//  Created by Lance Fallon on 4/20/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import "HelpViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.helpImage.image = [UIImage imageNamed:@"spaceBg.jpg"];
    self.helpMessageLabel.numberOfLines = 3;
    self.helpMessageLabel.text = helpMsg;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setHelpMessage:(NSString *)msg{
    if(helpMsg == nil){
        helpMsg = [[NSString alloc]init];
    }
    helpMsg = msg;
}

@end
