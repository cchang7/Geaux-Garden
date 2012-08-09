//
//  DetailViewController.m
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize vegName;
@synthesize vegSpringDate;
@synthesize vegFallDate;
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
}

- (void)viewDidUnload
{
    [self setVegName:nil];
    [self setVegSpringDate:nil];
    [self setVegDepth:nil];
    [self setVegFallDate:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
