//
//  RMIDatePickerViewController.h
//  07 Pickers
//
//  Created by Reto Misteli on 18.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RMIDatePickerViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker * datePicker;

- (IBAction)buttonPressed;

@end
