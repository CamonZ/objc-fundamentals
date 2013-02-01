//
//  CTRentalProperty.h
//  RentalManager
//
//  Created by CamonZ on 1/31/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum PropertyType{
  TownHouse, Unit, Mansion
} PropertyType;

@interface CTRentalProperty : NSObject{
  float _rentalPrice;
  NSString *_address;
  PropertyType _propertyType;
}

@property(nonatomic) float rentalPrice;
@property(nonatomic, copy) NSString* address;
@property(nonatomic) PropertyType propertyType;

+(id)rentalPropertyOfType:(PropertyType)newPropertyType rentingFor:(float)newRentalPrice atAddress:(NSString*)newAddress;

- (id)initWithAddress:(NSString *)newAddress
          rentalPrice:(float)newRentalPrice
              andType:(PropertyType)newPropertyType;

-(void)increaseRentalByPercent:(float)percent withMaximum:(float)max;
-(void)decreaseRentalByPercent:(float)percent withMinimum:(float)min;


@end
