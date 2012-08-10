//
//  VegCell.h
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VegCell : NSObject




@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *springPlantingDate;
@property (nonatomic,strong) NSString *fallPlantingDate;
@property (nonatomic, strong) NSString *depth;
@property (nonatomic,strong) NSString *space;
@property (nonatomic,strong) NSString *varieties;
@property (nonatomic,strong) NSString *harvest;

+ (VegCell *)vegWithName:(NSString *)name springPlantingDate:(NSString *)springPlantingDate fallPlantingDate:(NSString *)fallPlantingDate depth:(NSString *)depth space:(NSString *)space varieties:(NSString *)varieties harvest:(NSString *)harvest;

@end
