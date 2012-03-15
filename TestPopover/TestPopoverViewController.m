//
//  TestPopoverViewController.m
//  TestPopover
//
//  Created by Peter Pan on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TestPopoverViewController.h"
#import "WEPopoverController.h"
#import "TestTableViewController.h"

@interface TestPopoverViewController ()

@end

@implementation TestPopoverViewController

-(void)showPopover:(id)sender
{

    TestTableViewController *tableController = [[TestTableViewController alloc] initWithStyle:UITableViewStylePlain];
    tableController.contentSizeForViewInPopover = CGSizeMake(100, 200);    
    
    popoverController = [[WEPopoverController alloc] initWithContentViewController:tableController];
    [popoverController presentPopoverFromRect:CGRectMake(20, 20, 100, 30) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];

    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    but.frame = CGRectMake(10, 10, 200, 30);
    [but setTitle:@"show popover" forState:UIControlStateNormal];
    [self.view addSubview:but];
    [but addTarget:self action:@selector(showPopover:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
