//
//  HelpViewController.h
//  ProteinTracker
//
//  Created by Lance Fallon on 4/20/15.
//  Copyright (c) 2015 Lance Fallon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpViewController : UIViewController
{
    NSString *helpMsg;
}

@property (weak, nonatomic) IBOutlet UIImageView *helpImage;
@property (weak, nonatomic) IBOutlet UILabel *helpMessageLabel;
-(void)setHelpMessage:(NSString *)msg;
@end
