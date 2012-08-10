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
@synthesize space = _space;
@synthesize varieties = _varieties;
@synthesize harvest = _harvest;


// name
// springPlantingDate
// fall...
// seedDepth


+ (VegCell *)vegWithName:(NSString *)name springPlantingDate:(NSString *)springPlantingDate fallPlantingDate:(NSString *)fallPlantingDate depth:(NSString *)depth space:(NSString *)space varieties:(NSString *)varieties harvest:(NSString *)harvest

{

    VegCell *newVegCell= [[VegCell alloc]init];
    
    newVegCell.name = name;
    newVegCell.springPlantingDate = springPlantingDate;
    newVegCell.fallPlantingDate = fallPlantingDate;
    newVegCell.depth = depth;
    newVegCell.space = space;
    newVegCell.varieties = varieties;
    newVegCell.harvest = harvest;
    
    
    
    return newVegCell;
    
    
   }



@end
