//
//  RMIAppDelegate.h
//  06 View Switcher
//
//  Created by Reto Misteli on 18.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RMISwitchViewController;

@interface RMIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) RMISwitchViewController *swichViewController;

@end
