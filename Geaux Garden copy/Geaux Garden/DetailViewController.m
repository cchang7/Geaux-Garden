//
//  DetailViewController.m
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "ClassAppAppDelegate.h"
#import "VegListViewController.h"
@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize vegName;
@synthesize vegSpringDate;
@synthesize vegFallDate;
@synthesize vegSpace;
@synthesize vegVarieties;
@synthesize vegHarvest;
@synthesize vegDepth;
@synthesize vegNameDetail;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SeedReference" ofType:@"plist"];
    NSDictionary *seedRef = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSLog(@"%@",seedRef);
    NSLog(@"vegName %@",vegName);
    
    self.vegSpringDate.text = self.vegName.springPlantingDate;
    self.vegFallDate.text = self.vegName.fallPlantingDate;
    self.vegNameDetail.text = self.vegName.name;
    self.vegDepth.text = self.vegName.depth;
    self.vegSpace.text = self.vegName.space;
    self.vegVarieties.text = self.vegName.varieties;
    self.vegHarvest.text = self.vegName.harvest;
    
}

- (void)viewDidUnload
{
    [self setVegName:nil];
    [self setVegSpringDate:nil];
    [self setVegDepth:nil];
    [self setVegFallDate:nil];
    [self setVegSpace:nil];
    [self setVegVarieties:nil];
    [self setVegHarvest:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)addAction:(UIBarButtonItem *)sender {
    
    NSMutableDictionary *vegNameDictionary = [[NSMutableDictionary alloc]init];
    [vegNameDictionary setValue:self.vegName.springPlantingDate forKey:@"Spring"];
    [vegNameDictionary setValue:self.vegName.fallPlantingDate forKey:@"Fall"];
    

    [myGarden setObject:vegNameDictionary forKey:self.vegName.name];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *basePath = [paths lastObject];
    NSString *fullPath = [basePath stringByAppendingPathComponent:@"MyGardenRef.plist"];
    
    [myGarden writeToFile:fullPath atomically:YES];
    
    ClassAppAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    UITabBarController *tabBar = (UITabBarController *)appDelegate.window.rootViewController;
    [tabBar setSelectedIndex:0];
    
    
}
@end
