//
//  Hook.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/3.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "Hook.h"
#import <objc/runtime.h>

@implementation Hook

+ (void)hookClass:(Class)classObject fromSelector:(SEL)fromSelector toSelector:(SEL)toSelector{
    Class class = classObject;
    // 得到被交换类的实例方法
    Method fromMethod = class_getInstanceMethod(class, fromSelector);
    // 得到交换类的实例方法
    Method toMethod = class_getInstanceMethod(class, toSelector);
 
    if (class_addMethod(class, fromSelector, method_getImplementation(toMethod), method_getTypeEncoding(fromMethod))) {
        // 进行方法的交换
        class_replaceMethod(class, toSelector, method_getImplementation(fromMethod), method_getTypeEncoding(fromMethod));
    }else{
        // 交换 IMP 指针
        method_exchangeImplementations(fromMethod, toMethod);
    }
}

@end
