//
//  DetailViewController.h
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "VegCell.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *vegNameDetail;

@property (strong,nonatomic) VegCell *vegName;
@property (weak, nonatomic) IBOutlet UILabel *vegSpringDate;
@property (weak, nonatomic) IBOutlet UILabel *vegFallDate;
@property (weak, nonatomic) IBOutlet UILabel *vegSpace;
@property (weak, nonatomic) IBOutlet UILabel *vegVarieties;
@property (weak, nonatomic) IBOutlet UILabel *vegHarvest;

@property (weak, nonatomic) IBOutlet UILabel *vegDepth;
- (IBAction)addAction:(UIBarButtonItem *)sender;

@end
