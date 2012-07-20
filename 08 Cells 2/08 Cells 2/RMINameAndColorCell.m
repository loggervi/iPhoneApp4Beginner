//
//  RMINameAndColorCell.m
//  08 Cells 2
//
//  Created by Reto Misteli on 20.07.12.
//  Copyright (c) 2012 rmisteli.ch. All rights reserved.
//

#import "RMINameAndColorCell.h"

@implementation RMINameAndColorCell

@synthesize name;
@synthesize color;

@synthesize nameLabel;
@synthesize colorLabel;


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setName:(NSString *)n {
    if (![n isEqualToString:name]) {
        name = [n copy];
        nameLabel.text = name;
    }
}

- (void)setColor:(NSString *)c {
    if (![c isEqualToString:color]) {
        color = [c copy];
        colorLabel.text = color;
    }
}

@end
