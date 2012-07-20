//
//  RMIViewController.h
//  08 Section
//
//  Created by Reto Misteli on 20.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RMIViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSDictionary *names;
@property (strong, nonatomic) NSArray *keys;

@end
