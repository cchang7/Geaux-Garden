//
//  MyGardenViewController.m
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MyGardenViewController.h"
#import "VegListViewController.h"
#import "VegCell.h"
#import "MyGardenTableCell.h"
//#import "DetailViewController.h"

@interface MyGardenViewController ()

@end

@implementation MyGardenViewController
@synthesize gardenTableView;
@synthesize myGardenList;


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
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths lastObject];
    NSString *fullPath = [basePath stringByAppendingPathComponent:@"MyGardenRef.plist"];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:fullPath]) {
        myGarden = [NSMutableDictionary dictionaryWithContentsOfFile:fullPath];
        NSLog(@"Loading myGarden %@", myGarden);
    }
    else {
        myGarden = [NSMutableDictionary dictionary ];
        [myGarden writeToFile:fullPath atomically:YES];
    }


    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"APPEAAARREEED!!!!!!!");
    NSLog(@"***MY GARDEN DID LOAD***");
    NSLog(@"myGarden = %@", myGarden);
    self.myGardenList = [[NSMutableArray alloc]init ];
    
    for (NSString *vegName in myGarden.allKeys) {
        NSDictionary *vegDict = [myGarden objectForKey:vegName];
        NSLog(@"Our vegDict item %@", vegDict);
        
        [self.myGardenList addObject:[VegCell vegWithName:vegName
                                       springPlantingDate:[vegDict valueForKey:@"Spring"]
                                         fallPlantingDate:[vegDict valueForKey:@"Fall"]
                                                    depth:nil
                                                    space:nil                                                varieties:nil
                                                  harvest:nil
                                      
                                      ]];
    }
    [self.tableView reloadData];
}

- (void)viewDidUnload
{

    [self setGardenTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return self.myGardenList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    // Configure the cell...
    
    
    MyGardenTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gardencell"];
    
    // Configure the cell...
    
    VegCell *vegetable = [self.myGardenList objectAtIndex:indexPath.row];
    
    cell.myGardenVeggieName.text = vegetable.name;
    cell.myGardenFallDate.text = vegetable.fallPlantingDate;
    cell.myGardenSpringDate.text = vegetable.springPlantingDate;
    
    
    
    return cell;
    
    
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    // Testing the segue's identifier to see if it is DetailViewSegue
//    // If it is we are going to set the item property on the
//    // new DetailViewController that will be loaded onto screen
//    if ([segue.identifier isEqualToString:@"DetailViewSegue"]) {
//        DetailViewController *detailVC = segue.destinationViewController;
//        NSIndexPath *indexPath = [self.gardenTableView indexPathForSelectedRow];
//        
//        VegCell *veggie = [self.myGardenList objectAtIndex:indexPath.row];
//        
//        detailVC.vegName = veggie;
//        NSLog(@"Veg Name Object =%@", detailVC.vegName);
//        [self.gardenTableView deselectRowAtIndexPath:indexPath animated:YES];        
//    }
//}
//


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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
