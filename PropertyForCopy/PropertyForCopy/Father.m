//
//  Father.m
//  PropertyForCopy
//
//  Created by Silence on 15/7/30.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import "Father.h"

@implementation Father

- (id)copyWithZone:(NSZone *)zone
{
    
    Father *father = [super copyWithZone:zone];
    
    father.age = self.age;
    
    return father;
}

@end
