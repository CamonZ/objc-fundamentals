//
//  Student.h
//  PersonClass
//
//  Created by CamonZ on 2/1/13.
//  Copyright (c) 2013 CamonZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person{
  NSArray *_classes;
  NSNumber *_numberOfCredits;
  NSString *_major;
}
- (id)initWithName:(NSString *)newName
               age:(NSNumber *)newAge
            gender:(Gender)newGender
           classes:(NSArray *)newClasses
   numberOfCredits:(NSNumber *)newNumberOfCredits
             major:(NSString *)newMajor;


@property(nonatomic, strong) NSArray* classes;
@property(nonatomic, strong) NSNumber* numberOfCredits;
@property(nonatomic, strong) NSString* major;

@end
