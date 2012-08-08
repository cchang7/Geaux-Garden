//
//  DetailViewController.h
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *vegNameDetail;

@property (strong,nonatomic) NSString *vegName;
@property (weak, nonatomic) IBOutlet UILabel *vegDate;
@property (weak, nonatomic) IBOutlet UILabel *vegInfo;

@end
