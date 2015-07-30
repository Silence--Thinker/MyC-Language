//
//  Person.h
//  OC-Runtime
//
//  Created by Silence on 15/7/30.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

/** name */
@property (copy, nonatomic) NSString *name;

/** age */
@property (assign, nonatomic) int age;

@end
