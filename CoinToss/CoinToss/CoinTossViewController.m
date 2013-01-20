//
//  CoinTossViewController.m
//  CoinToss
//
//  Created by CamonZ on 1/20/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import "CoinTossViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface CoinTossViewController ()

@end

@implementation CoinTossViewController

@synthesize status, result;

-(void)simulateCoinToss:(BOOL)userCalledHeads{
  BOOL coinLandedOnHeads = (arc4random() % 2) == 0;
  result.text = coinLandedOnHeads ? @"Heads" : @"Tails";
  status.text = (coinLandedOnHeads == userCalledHeads) ? @"Correct!" : @"Wrong!";
  
  CABasicAnimation *rotation = [CABasicAnimation
                                animationWithKeyPath:@"transform.rotation"];
  rotation.timingFunction = [CAMediaTimingFunction
                             functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  rotation.fromValue = [NSNumber numberWithFloat:0.0f];
  rotation.toValue = [NSNumber numberWithFloat:720 * M_PI / 180.0f];
  rotation.duration = 2.0f;
  [status.layer addAnimation:rotation forKey:@"rotate"];
  
  CABasicAnimation *fade = [CABasicAnimation
                            animationWithKeyPath:@"opacity"];
  fade.timingFunction = [CAMediaTimingFunction
                         functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  fade.fromValue = [NSNumber numberWithFloat:0.0f];
  fade.toValue = [NSNumber numberWithFloat:1.0f];
  fade.duration = 3.5f;
  [status.layer addAnimation:fade forKey:@"fade"];
}

-(IBAction)callHeads{
  [self simulateCoinToss:YES];
}
-(IBAction)callTails{
  [self simulateCoinToss:NO];
}

-(void)viewDidUnload{
  self.status = nil;
  self.result = nil;
}
@end
