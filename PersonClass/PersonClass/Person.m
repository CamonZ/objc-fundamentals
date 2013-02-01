//
//  Person.m
//  PersonClass
//
//  Created by CamonZ on 2/1/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name = _name, age = _age, gender = _gender;

-(id)init{
  if(self = [super init]){
    self.name = @"Person";
    self.age = [NSNumber numberWithInt:-1];
    self.gender = Male;
  }
  return self;
}

-(id)initWithName:(NSString *)newName{
  self = [self init];
  if(self) self.name = newName;
  return self;
}

-(id)initWithAge:(NSNumber *)newAge{
  self = [self init];
  if(self) self.age = newAge;
  return self;
}

-(id)initWithGender:(Gender)newGender{
  self = [self init];
  if(self) self.gender = newGender;
  return self;
}

-(id)initWithName:(NSString *)newName
              age:(NSNumber *)newAge
           gender:(Gender)newGender{
  
  self = [self init];

  if(self){
    self.name = newName;
    self.age = newAge;
    self.gender = newGender;
  }
  
  return self;
}

-(NSString *) description{
  if (self.gender == Male){
    return [NSString stringWithFormat:
      @"Hi! I am a man, named %@, who is %@ years old",
      self.name, self.age];
  }
  else{
    return [NSString stringWithFormat:
      @"Hi! I am a woman, named %@, who is a %@ years old",
      self.name, self.age];
  }
}
@end
