//
//  RMINameAndColorCell.h
//  08 Cells 2
//
//  Created by Reto Misteli on 20.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RMINameAndColorCell : UITableViewCell

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *color;

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *colorLabel;

@end
