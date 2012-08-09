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
@synthesize springPlantingDate = _springPlantingDate;
@synthesize fallPlantingDate = _fallPlantingDate;
@synthesize depth = _depth; 


// name
// springPlantingDate
// fall...
// seedDepth


+ (VegCell *)vegWithName:(NSString *)name springPlantingDate:(NSString *)springPlantingDate fallPlantingDate:(NSString *)fallPlantingDate depth:(NSString *)depth
{
    VegCell *newVegCell= [[VegCell alloc]init];
    
    newVegCell.name = name;
    newVegCell.springPlantingDate = springPlantingDate;
    newVegCell.fallPlantingDate = fallPlantingDate;
    newVegCell.depth = depth;
    
    
    
    return newVegCell;
    
    
   }

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}





@end
