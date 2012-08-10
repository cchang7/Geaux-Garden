//
//  VegListViewController.m
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VegListViewController.h"
#import "VegCell.h"
#import "DetailViewController.h"
#import "VeggieTableCell.h"
NSDictionary *seedRef;
NSMutableDictionary *myGarden;

@interface VegListViewController ()

@end

@implementation VegListViewController
//@synthesize seedRef;
//@synthesize myGarden;
@synthesize veggieList;
@synthesize vegTableView;



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];

//    NSDictionary *seedRef;
//    [[seedRef allkeys] count];
    
    

    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SeedReference" ofType:@"plist"];
     seedRef = [NSDictionary dictionaryWithContentsOfFile:filePath];
//    NSLog(@"%@",seedRef);
    
    
    self.veggieList = [[NSMutableArray alloc]init ];
    
    for (NSString *vegName in seedRef.allKeys) {
        NSDictionary *vegDict = [seedRef objectForKey:vegName];
   
        [self.veggieList addObject:[VegCell vegWithName:vegName
                                     springPlantingDate:[vegDict valueForKey:@"Spring"]
                                       fallPlantingDate:[vegDict valueForKey:@"Fall"]
                                                  depth:[vegDict valueForKey:@"Depth"]
                                    space:[vegDict valueForKey:@"Space"]
                                    varieties:[vegDict valueForKey:@"Varieties"]
                                                harvest: [vegDict valueForKey:@"Harvest"]
                                    ]];

        
    }
    
    
  
  
    //addnewthings  while loop through seedRef
    
    
//    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{

    [self setVegTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.veggieList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        
    VeggieTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"vegcell"];
    
    // Configure the cell...
    
        VegCell *vegetable = [self.veggieList objectAtIndex:indexPath.row];
    
    cell.veggieName.text = vegetable.name;


    
    return cell;
    

    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Testing the segue's identifier to see if it is DetailViewSegue
    // If it is we are going to set the item property on the
    // new DetailViewController that will be loaded onto screen
    if ([segue.identifier isEqualToString:@"DetailViewSegue"]) {
        DetailViewController *detailVC = segue.destinationViewController;
        NSIndexPath *indexPath = [self.vegTableView indexPathForSelectedRow];
    
        VegCell *veggie = [self.veggieList objectAtIndex:indexPath.row];
        
        detailVC.vegName = veggie;
        NSLog(@"Veg Name Object =%@", detailVC.vegName);
        [self.vegTableView deselectRowAtIndexPath:indexPath animated:YES];        
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


@end
