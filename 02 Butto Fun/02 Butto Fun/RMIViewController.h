//
//  RMIViewController.h
//  02 Butto Fun
//
//  Created by Reto Misteli on 16.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RMIViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *statusText;

- (IBAction)buttonPressed:(id)sender;

@end
