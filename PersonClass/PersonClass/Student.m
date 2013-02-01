//
//  Student.m
//  PersonClass
//
//  Created by CamonZ on 2/1/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize classes = _classes, numberOfCredits = _numberOfCredits,
              major = _major;

-(id)initWithName:(NSString *)newName
              age:(NSNumber *)newAge
           gender:(Gender)newGender
          classes:(NSArray *)newClasses
  numberOfCredits:(NSNumber *)newNumberOfCredits
            major:(NSString *)newMajor{
  
  self = [self initWithName:newName age:newAge gender:newGender];

  
  if(self){
    self.classes = newClasses;
    self.numberOfCredits = newNumberOfCredits;
    self.major = newMajor;
  }
  
  return self;
}

-(NSString *)description {
  if(self.gender == Male) {
    return [NSString stringWithFormat:
      @"%@. I am a male currently enrolled in %@ "
      "for %@ credits with %@ as my major",
      [super description], self.classes, self.numberOfCredits, self.major];
  }
  else {
    return [NSString stringWithFormat:
      @"%@. I am a female currently enrolled in %@ "
      "for %@ credits with %@ as my major",
      [super description], self.classes, self.numberOfCredits, self.major];
  }
}

@end
