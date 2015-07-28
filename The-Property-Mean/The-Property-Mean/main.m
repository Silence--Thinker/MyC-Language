//
//  main.m
//  The-Property-Mean
//
//  Created by Silence on 15/7/28.
//  Copyright (c) 2015年 FNWS. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Father.h"
#import "Person.h"
#import "Son.h"

int main(int argc, const char * argv[]) {

    
//    NSLog(@"\nFunction: %s\nPrettyfunction: %s\nLine: %d\nFile: %s",__func__, __PRETTY_FUNCTION__,__LINE__,__FILE__);
    
    Person *person = [[Person alloc] init];
    
    /*  如果加了自动释放迟可以看出来，用assign修饰的delegate虽然对象已经被释放了，但是仍然只指向内存中的某个(这里是不确定的)内存空间，即assign赋值的属性对象，遭到催毁的时候，属性不会至空，会有crash
        而用weak修饰的delegate在其指向的对象被释放的时候，会将属性至空了。不会crash
        
        从而可以看出来，assign修饰的@property跟weak相似，只是属性遭到催毁时，不是至空属性。
        而weak是一种非拥有关系，属性遭到催毁时，属性会至空。更加安全，可靠。
     
     */
    @autoreleasepool {
        
        Father *father = [[Father alloc] init];
        Son *son = [[Son alloc] init];
        
        person.delegate = father;
        
        NSLog(@"==%@==", person.delegate);
        
        person.delegate = son;
        NSLog(@"==%@==", person.delegate);
    }
    
    NSLog(@"==%@==", person.delegate);
    
    
}
