//
//  RMIViewController.m
//  02 Butto Fun
//
//  Created by Reto Misteli on 16.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import "RMIViewController.h"

@implementation RMIViewController
@synthesize statusText;

- (void)viewDidUnload
{
    [self setStatusText:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)buttonPressed:(id)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    statusText.text = [NSString stringWithFormat:@"%@ button pressed.", title];
}
@end
