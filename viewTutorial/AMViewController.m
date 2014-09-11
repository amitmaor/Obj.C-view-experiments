//
//  AMViewController.m
//  viewTutorial
//
//  Created by Amit Maor on 9/11/14.
//  Copyright (c) 2014 Amit Maor. All rights reserved.
//

#import "AMGrid.h"
#import "AMViewController.h"

@interface AMViewController () {
    UIButton* _button;
    UIView* _gridView;
}

@end

@implementation AMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    _gridView = [[AMGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    [_gridView addSubview:_button];
    
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_button setTitle:@"Hit Me!" forState:UIControlStateNormal];
    _button.showsTouchWhenHighlighted = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"You pressed the button!");
}

@end
