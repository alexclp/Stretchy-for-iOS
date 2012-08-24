//
//  ViewController.m
//  strechy
//
//  Created by Alex Clapa on 18.06.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    
    UIButton *btnBack=[[UIButton alloc] initWithFrame:CGRectMake(10, 450, 52, 27)];
    [btnBack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [btnBack setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
    
    [btnBack.titleLabel setFont:[UIFont fontWithName:@"Verdana" size:13.0]];
    
    [btnBack setBackgroundImage:[UIImage imageNamed:@"btn-bg-blue-small.png"] forState:UIControlStateNormal];
    
    [btnBack addTarget:self action:@selector(btnBackPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [btnBack setTitle:@"Back" forState:UIControlStateNormal];
    
    [self.view addSubview:btnBack];
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

@end
