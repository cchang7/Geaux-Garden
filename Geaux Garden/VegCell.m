//
//  VegCell.m
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VegCell.h"

@implementation VegCell
@synthesize name = _name;
@synthesize date = _date;
@synthesize info = _info;




- (VegCell *)vegWithName:(NSString *)name date:(NSString *)date info:(NSString *)info
{
    VegCell *newVegCell= [[VegCell alloc]init];
    
    newVegCell.name = name;
    newVegCell.date = date;
    newVegCell.info = info;
    
    return newVegCell;
    
    
   }

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}





@end
