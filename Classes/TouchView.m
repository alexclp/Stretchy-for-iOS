//
//  TouchView.m
//  strechy
//
//  Created by Alex Clapa on 18.06.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "TouchView.h"

@implementation TouchView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
  [UIView beginAnimations:@"MoveAndStrech" context:nil];
  [UIView setAnimationDuration:1];
  [UIView setAnimationBeginsFromCurrentState:YES];
  if([touches count] == 1) {
    UITouch *touch = [touches anyObject];
    strechView.center = [touch locationInView:self];
  } else if([touches count] == 2) {
    NSArray *touchArray = [touches allObjects];
    UITouch *touchOne = [touchArray objectAtIndex:0];
    UITouch *touchTwo = [touchArray objectAtIndex:1];
    CGPoint pt1 = [touchOne locationInView:self];
    CGPoint pt2 = [touchTwo locationInView:self];
    CGFloat x, y, width, height;
    if(pt1.x < pt2.x) {
      x = pt1.x;
      width = pt2.x - pt1.x;
    } else {
      x = pt2.x;
      width = pt1.x - pt2.x;
    }
    if(pt1.y < pt2.y) {
      y = pt1.y;
      height = pt2.y - pt1.y;
    } else {
      y = pt2.y;
      height = pt1.y - pt2.y;
    }
    strechView.frame = CGRectMake(x, y, width, height);  
  }
    
  [UIView commitAnimations];
}



@end
