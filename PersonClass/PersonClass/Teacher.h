//
//  Teacher.h
//  PersonClass
//
//  Created by CamonZ on 2/1/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Teacher : Person{
  NSArray *_classes;
  NSNumber *_salary;
  NSString *_areaOfExpertise;
}

-(id)initWithName:(NSString *)newName
              age:(NSNumber *)newAge
           gender:(Gender)newGender
          classes:(NSArray *)newClasses
           salary:(NSNumber *)newSalary
        expertise:(NSString *)newExpertise;

@property(nonatomic, strong) NSArray* classes;
@property(nonatomic, strong) NSNumber* salary;
@property(nonatomic, strong) NSString* areaOfExpertise;

@end
