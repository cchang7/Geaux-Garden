//
//  VegCell.h
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VegCell : UITableViewCell




@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *springPlantingDate;
@property (nonatomic,strong) NSString *fallPlantingDate;
@property (nonatomic, strong) NSString *depth;

+ (VegCell *)vegWithName:(NSString *)name springPlantingDate:(NSString *)springPlantingDate fallPlantingDate:(NSString *)fallPlantingDate depth:(NSString *)depth;

@end
