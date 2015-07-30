//
//  main.m
//  OC-Runtime
//
//  Created by Silence on 15/7/30.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        person.name = @"silence_xjc";
        person.age = 22;
        
        NSLog(@"==%@==%d", person.name, person.age);
    }
    return 0;
}
