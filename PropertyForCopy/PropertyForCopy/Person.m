//
//  Person.m
//  PropertyForCopy
//
//  Created by Silence on 15/7/29.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import "Person.h"

@implementation Person


- (id)copyWithZone:(NSZone *)zone
{
    
    Person *person = [[self class] allocWithZone:zone];
    person.name = self.name;
    
    
    
    return person;
}

@end
