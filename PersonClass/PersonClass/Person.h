//
//  Person.h
//  PersonClass
//
//  Created by CamonZ on 2/1/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
  Male, Female
} Gender;


@interface Person : NSObject{
  NSString *_name;
  NSNumber *_age;
  Gender _gender;
}

-(id)initWithName:(NSString *)newName;
-(id)initWithAge:(NSNumber *)newAge;
-(id)initWithGender:(Gender)newGender;
-(id)initWithName:(NSString *)newName
              age:(NSNumber *)newAge
           gender:(Gender)newGender;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic) Gender gender;

@end
