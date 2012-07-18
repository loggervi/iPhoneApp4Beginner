//
//  RMISwitchViewController.m
//  06 View Switcher
//
//  Created by Reto Misteli on 18.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import "RMISwitchViewController.h"
#import "RMIYellowViewController.h"
#import "RMIBlueViewController.h"

@implementation RMISwitchViewController

@synthesize yellowViewController;
@synthesize blueViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    self.blueViewController = [[RMIBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)switchViews:(id)sender {
    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController == nil) {
            self.yellowViewController = [[RMIYellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
        }
        [blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
    } else {
        if (self.blueViewController == nil) {
            self.blueViewController = [[RMIBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
        }
        [yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
}

@end
