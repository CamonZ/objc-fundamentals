//
//  RentalManagerMasterViewController.h
//  RentalManager
//
//  Created by CamonZ on 1/20/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface RentalManagerMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

typedef enum PropertyType{
  Unit,
  TownHouse,
  Mansion
} PropertyType;

typedef struct {
  __unsafe_unretained NSString *address;
  PropertyType type;
  double weeklyRentalPrice;
} RentalProperty;


@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
