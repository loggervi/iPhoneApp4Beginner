//
//  RMISwitchViewController.h
//  06 View Switcher
//
//  Created by Reto Misteli on 18.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RMIYellowViewController;
@class RMIBlueViewController;

@interface RMISwitchViewController : UIViewController

@property (strong, nonatomic) RMIYellowViewController *yellowViewController;
@property (strong, nonatomic) RMIBlueViewController *blueViewController;

- (IBAction)switchViews:(id)sender;

@end
