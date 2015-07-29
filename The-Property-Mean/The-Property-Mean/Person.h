//
//  Person.h
//  The-Property-Mean
//
//  Created by Silence on 15/7/28.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "Son.h"
@class Son;
@protocol PersonDelegate <NSObject>
@optional

- (void)toDoSomeThing;

@end

@interface Person : NSObject

/** name */
@property (copy, nonatomic) NSString *name;

/** age */
@property (assign, nonatomic) int age;

/** jj */
@property (assign, nonatomic) NSString *title;

/** father */
@property (assign, nonatomic) Son *fa;

/** delegate */
@property (weak, nonatomic) id<PersonDelegate> delegate;
// 在MRC中delegate用的是assign 在ARC中delegate用的是weak

@end
