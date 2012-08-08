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
@synthesize vegDate;
@synthesize vegInfo;
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
}

- (void)viewDidUnload
{
    [self setVegName:nil];
    [self setVegDate:nil];
    [self setVegInfo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
