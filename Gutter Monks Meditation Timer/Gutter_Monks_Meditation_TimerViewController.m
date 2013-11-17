//
//  Gutter_Monks_Meditation_TimerViewController.m
//  Gutter Monks Meditation Timer
//
//  Created by Sean Topham on 1/17/13.
//  Copyright (c) 2013 Sean Topham. All rights reserved.
//

#import "Gutter_Monks_Meditation_TimerViewController.h"

@interface Gutter_Monks_Meditation_TimerViewController ()

@end

@implementation Gutter_Monks_Meditation_TimerViewController

- (IBAction)Start {
    theTime = 1200;
    [self showTime];
    counter = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showActivity) userInfo:nil repeats:YES];
}

- (IBAction)reset {
    theTime = 60;
    [self showTime];
}

- (void)showActivity {
    theTime++;
    [self showTime];
}

- (void)showTime {
    time.text = [NSString stringWithFormat:@"%02d:%02d", theTime / 60, theTime % 60];
                 }
                 
- (IBAction)quit {
    [counter invalidate];
                 }
    

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
