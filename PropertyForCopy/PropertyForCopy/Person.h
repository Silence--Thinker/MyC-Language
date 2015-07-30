//
//  Person.h
//  PropertyForCopy
//
//  Created by Silence on 15/7/29.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying>

/** 成绩 */
@property (copy, nonatomic) NSMutableArray *array;





/** name */
@property (copy, nonatomic) NSString *name;

@end
