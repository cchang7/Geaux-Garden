//
//  MyGardenTableCell.m
//  Geaux Garden
//
//  Created by iOS Camp on 8/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyGardenTableCell.h"

@implementation MyGardenTableCell

@synthesize myGardenVeggieName;
@synthesize myGardenFallDate;
@synthesize myGardenSpringDate;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
