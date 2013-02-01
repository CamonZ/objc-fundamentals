//
//  CTRentalProperty.m
//  RentalManager
//
//  Created by CamonZ on 1/31/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import "CTRentalProperty.h"

@implementation CTRentalProperty

@synthesize rentalPrice = _rentalPrice;
@synthesize address = _address;
@synthesize propertyType = _propertyType;


+(id)rentalPropertyOfType:(PropertyType)newPropertyType
               rentingFor:(float)newRentalPrice
                atAddress:(NSString *)newAddress{
  id newObject = [[CTRentalProperty alloc]
                  initWithAddress:newAddress
                  rentalPrice:newRentalPrice
                  andType:newPropertyType
                  ];
  return newObject;
}

- (id)initWithAddress:(NSString *)newAddress
          rentalPrice:(float)newRentalPrice
              andType:(PropertyType)newPropertyType
{
  if ((self = [super init])) {
    self.address = newAddress;
    self.rentalPrice = newRentalPrice;
    self.propertyType = newPropertyType;
  }
  return self;
}

-(void)increaseRentalByPercent:(float)percent withMaximum:(float)max{
  float price = [self rentalPrice];
  price = price * (100 + percent) / 100;
  price = fmin(price, max);
  self.rentalPrice = price;
}

-(void)decreaseRentalByPercent:(float)percent withMinimum:(float)min{
  float price = [self rentalPrice];
  price = price * (100 - percent) / 100;
  price = fmax(price, min);
  self.rentalPrice = price;
}



@end
