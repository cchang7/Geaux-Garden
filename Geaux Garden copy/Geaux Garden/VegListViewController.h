//
//  VegListViewController.h
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
extern NSDictionary *seedRef;
extern NSMutableDictionary *myGarden;
@interface VegListViewController : UITableViewController



@property (weak, nonatomic) IBOutlet UITableView *vegTableView;

//@property (strong, nonatomic) NSDictionary *seedRef;
//@property (strong, nonatomic) NSDictionary *myGarden;
@property (strong, nonatomic) NSMutableArray *veggieList;
@end
