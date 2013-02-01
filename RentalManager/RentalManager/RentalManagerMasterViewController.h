//
//  RentalManagerMasterViewController.h
//  RentalManager
//
//  Created by CamonZ on 1/20/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RentalManagerMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>{
  NSDictionary *_cityMappings;
  NSArray *_properties;
}


@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) NSArray *properties;
@end
