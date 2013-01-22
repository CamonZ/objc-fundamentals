//
//  RentalManagerDetailViewController.h
//  RentalManager
//
//  Created by CamonZ on 1/20/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RentalManagerDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
