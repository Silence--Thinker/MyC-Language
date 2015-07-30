//
//  main.m
//  PropertyForCopy
//
//  Created by Silence on 15/7/29.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Father.h"

void test1(){
    
    
    NSArray *array = [[NSArray alloc] init];
    NSLog(@"array=%@==", array.class);
    // ==__NSArrayI==
    
    NSMutableArray *arrayM = [NSMutableArray array];
    NSLog(@"arrayM=%@==", arrayM.class);
    //==__NSArrayM==
    
    NSMutableArray *arrayM2 = [arrayM copy];
    NSLog(@"arrayM2=%@==", arrayM2.class);
    // ==__NSArrayI==
    
    NSMutableArray *arrayM3 = arrayM2;
    NSLog(@"arrayM3=%@==", arrayM3.class);
    
    /**
        由上面的三次打印可以看得出来，mutable(可变)类型的数据，
        经过了copy操作之后变成了不可变类型了。
        由此可以看出copy进行的是值的复制，并且复制过的数据类型依然是不可变类型了。
        在执行可变操作的时候会crash
     */
    
    
    Person *person = [[Person alloc] init];
    person.array = [NSMutableArray array];
    NSLog(@"==%@==", person.array.class);
    // ==__NSArrayI==
    
//    [person.array addObject:@"1"];
    // 加上这句crash
}

void test2(){
    
    Person *person = [[Person alloc] init];
    person.array = [[NSArray alloc] init];
    NSLog(@"==%@==", person.array.class);
//    [person.array addObject:@"1"];
}

void test3(){
    
    Person *person = [[Person alloc] init];
    person.name = @"silence";
    NSLog(@"==%@==%p", person, person);
    
    Person *person2 = [person copy];
    NSLog(@"==%@==%p==%@", person2, person2, person2.name);
    
    
    
    Father *father = [[Father alloc] init];
    father.name = @"silence";
    father.age = 22;
    NSLog(@"==%@==%p", father, father);
    
    Father *father2 = [father copy];
    NSLog(@"==%@==%p==%@==%d", father2, father2, father2.name, father2.age);
    
}

int main(int argc, const char * argv[]) {

//    test1();
//    test2();
    test3();
    
    
}

