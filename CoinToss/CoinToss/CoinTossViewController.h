//
//  CoinTossViewController.h
//  CoinToss
//
//  Created by CamonZ on 1/20/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoinTossViewController : UIViewController{
  UILabel *status;
  UILabel *result;
}

@property (nonatomic, retain) IBOutlet UILabel *status;
@property (nonatomic, retain) IBOutlet UILabel *result;

-(IBAction)callHeads;
-(IBAction)callTails;

@end
