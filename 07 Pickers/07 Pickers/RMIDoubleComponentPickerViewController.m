//
//  RMIDoubleComponentPickerViewController.m
//  07 Pickers
//
//  Created by Reto Misteli on 18.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import "RMIDoubleComponentPickerViewController.h"

#define kFillingComponent 0
#define kBreadComponent 1

@implementation RMIDoubleComponentPickerViewController

@synthesize doublePicker;
@synthesize fillingTypes;
@synthesize breadTypes;

- (IBAction)buttonPressed {
    NSInteger fillingRow = [doublePicker selectedRowInComponent:kFillingComponent];
    NSInteger breadRow = [doublePicker selectedRowInComponent:kBreadComponent];
    
    NSString *bread = [breadTypes objectAtIndex:breadRow];
    NSString *filling = [fillingTypes objectAtIndex:fillingRow];
    
    NSString *message = [[NSString alloc] initWithFormat:@" Your %@ on %@ bread will be right up.", filling, bread];
    
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Thank you for your order." message:message delegate:nil cancelButtonTitle:@"Great!" otherButtonTitles:nil, nil];
    [alert show];
}

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
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSArray *fillingArray = [[NSArray alloc] initWithObjects: @"Ham", @"Turkey", @"Peanut Butter", @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Vegemite", nil];
    self.fillingTypes = fillingArray;
    NSArray *breadArray = [[NSArray alloc] initWithObjects: @"White", @"Whole Wheat", @"Rye", @"Sourdough", @"Seven Grain", nil];
    self.breadTypes = breadArray;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.doublePicker = nil;
    self.breadTypes = nil;
    self.fillingTypes = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == kBreadComponent) {
        return [self.breadTypes count];
    } else {
        return [self.fillingTypes count];
    }
}

#pragma mark Picker Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == kBreadComponent) {
        return [self.breadTypes objectAtIndex:row];
    } else {
        return [self.fillingTypes objectAtIndex:row];
    }
}

@end
