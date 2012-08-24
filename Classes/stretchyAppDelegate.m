//
//  strechyAppDelegate.m
//  strechy
//
//  Created by Alex Clapa on 18.06.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "stretchyAppDelegate.h"

@implementation strechyAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
    
}


- (void)dealloc {
    [window release];
    [super dealloc];
}

@end
