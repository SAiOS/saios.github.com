//
//  CDViewController.m
//  CompsDemo
//
//  Created by Wayne M. Hartman on 1/11/12.
//  Copyright (c) 2012 WayneHartman.com. All rights reserved.
//

#import "CDViewController.h"

@implementation CDViewController
@synthesize settingsButton;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UINavigationController* navController = segue.destinationViewController;
    UIViewController* dest = [navController topViewController];
    
    dest.title = @"Hello!";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setSettingsButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [settingsButton release];
    [super dealloc];
}
- (IBAction)didSelectSettings:(id)sender {
    NSLog(@"Hello!");
    
    [self performSegueWithIdentifier:@"Settings" sender:sender];
}
@end
