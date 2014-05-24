//
//  ViewController.m
//  GestureDummyProject
//
//  Created by Brandon Levasseur on 5/24/14.
//  Copyright (c) 2014 Brandon Levasseur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGestureRecognizer;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeGestureRecognizer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self.tapGestureRecognizer requireGestureRecognizerToFail:self.swipeGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedButton:(UIButton *)sender
{
    CGFloat red = (rand() / (double)INT_MAX);
    CGFloat green = (rand()/(double)INT_MAX);
    CGFloat blue = (rand()/(double)INT_MAX);
    sender.tintColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}
- (IBAction)swipeGestureDetected:(UISwipeGestureRecognizer *)sender
{
    NSLog(@"Swipping");
}


- (IBAction)tapGestureDetected:(UITapGestureRecognizer *)sender
{
    NSLog(@"Tapped");
    [self pressedButton:self.button];
}
@end
