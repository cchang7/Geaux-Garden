//
//  AddViewController.m
//  Geaux Garden
//
//  Created by iOS Camp on 8/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController


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
    NSDictionary *reference = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSLog(@"reference %@",reference);

}

- (void)viewDidUnload
{

    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}




- (IBAction)addButton:(UIBarButtonItem *)sender {
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Testing the segue's identifier to see if it is DetailViewSegue
    // If it is we are going to set the item property on the
    // new DetailViewController that will be loaded onto screen
       
    }





@end
