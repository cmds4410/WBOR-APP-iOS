//
//  FirstViewController.m
//  WBOR FINAL
//
//  Created by Connor Smith on 12/16/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController

@synthesize streamer, wbor, m3uPath;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.streamer = [[StreamModel alloc] init];
    self.m3uPath = @"http://139.140.232.18:8000/WBOR";
    [play setBackgroundColor:[UIColor whiteColor]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)togglePlay:(UIButton *)sender{
    
    if ([[[sender titleLabel] text] isEqualToString:@"Play"]){
        [play setBackgroundColor:[UIColor blueColor]];
        [stop setBackgroundColor:[UIColor whiteColor]];
        [stop setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [play setEnabled: NO];
        NSLog(@"NEW SESSION\n\n");
        self.wbor = [[NSURL alloc] initWithString:m3uPath];
        NSLog(@"wbor = %@",self.wbor);
        self.streamer = [[StreamModel alloc] initWithURL:wbor];
        [self.streamer start];
    }
    else if ([[[sender titleLabel] text] isEqualToString:@"Stop"]){
        [stop setBackgroundColor:[UIColor blueColor]];
        [play setBackgroundColor:[UIColor whiteColor]];
        [stop setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.streamer stop];
        self.streamer = nil;
        
        [play setHighlighted:FALSE];
        [play setEnabled:TRUE];
        
    }
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (BOOL)canBecomeFirstResponder {
	return YES;
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
    return NO;
    /*
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return NO;
    }
     */
}

@end
