//
//  Gutter_Monks_Meditation_TimerViewController.h
//  Gutter Monks Meditation Timer
//
//  Created by Sean Topham on 1/17/13.
//  Copyright (c) 2013 Sean Topham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Gutter_Monks_Meditation_TimerViewController : UIViewController {
    
    IBOutlet UILabel *time;
    
    NSTimer *counter;
    
    int theTime;
    
}

- (IBAction)Start;
- (IBAction)Stop;
- (IBAction)Reset;

- (void)showActivity;
- (void)showTime;

@end
