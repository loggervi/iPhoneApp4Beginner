//
//  RMIViewController.m
//  05 Autosize Move Elements
//
//  Created by Reto Misteli on 17.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RMIViewController.h"

@implementation RMIViewController
@synthesize buttonUL;
@synthesize buttonUR;
@synthesize buttonL;
@synthesize buttonR;
@synthesize buttonLL;
@synthesize buttonLR;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setButtonUL:nil];
    [self setButtonUR:nil];
    [self setButtonL:nil];
    [self setButtonR:nil];
    [self setButtonLL:nil];
    [self setButtonLR:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {
    if(UIInterfaceOrientationIsPortrait(interfaceOrientation)) {
        buttonUL.frame = CGRectMake( 20,  20, 125,125);
        buttonUR.frame = CGRectMake(175,  20, 125,125);
        buttonL.frame  = CGRectMake( 20, 168, 125,125);
        buttonR.frame  = CGRectMake(175, 168, 125,125);
        buttonLL.frame = CGRectMake( 20, 315, 125,125);
        buttonLR.frame = CGRectMake(175, 315, 125,125);
    } else {
        buttonUL.frame = CGRectMake( 20,  20, 125,125);
        buttonUR.frame = CGRectMake( 20, 155, 125,125);
        buttonL.frame  = CGRectMake(177,  20, 125,125);
        buttonR.frame  = CGRectMake(177, 155, 125,125);
        buttonLL.frame = CGRectMake(328,  20, 125,125);
        buttonLR.frame = CGRectMake(328, 155, 125,125);
    }
}

@end
