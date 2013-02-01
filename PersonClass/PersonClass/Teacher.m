//
//  Teacher.m
//  PersonClass
//
//  Created by CamonZ on 2/1/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

@synthesize classes = _classes, salary = _salary,
            areaOfExpertise = _areaOfExpertise;

-(id)initWithName:(NSString *)newName
              age:(NSNumber *)newAge
           gender:(Gender)newGender
          classes:(NSArray *)newClasses
           salary:(NSNumber *)newSalary
        expertise:(NSString *)newExpertise{
  
  self = [self initWithName:newName age:newAge gender:newGender];
  
  if(self){
    self.classes = newClasses;
    self.salary = newSalary;
    self.areaOfExpertise = newExpertise;
  }
  
  return self;
}

-(NSString *)description {
  if(self.gender == Male) {
    return [NSString stringWithFormat:
      @"%@. I am a male currently teaching %@ "
      "for $%@ per year with expertise in %@",
      [super description], self.classes, self.salary, self.areaOfExpertise];
  } else {
    return [NSString stringWithFormat:
      @"%@. I am a female currently teaching %@ "
      "for $%@ per year with expertise in %@",
      [super description], self.classes, self.salary, self.areaOfExpertise];
  }
}

@end
