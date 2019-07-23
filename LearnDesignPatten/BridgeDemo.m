//
//  BridgeDemo.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "BridgeDemo.h"
#import "ObjectA1.h"
#import "ObjectB1.h"

@interface BridgeDemo()

@property(nonatomic, strong) BaseObjectA *objA;
@end

@implementation BridgeDemo

- (void)fetch{
    // 创建一个具体的ClassA
    _objA = [[ObjectA1 alloc] init];
    // 创建一个具体的ClassB
    BaseObjectB *b1 = [[ObjectB1 alloc] init];
    // 将一个具体的ClassB1 指定给抽象的ClassB
    _objA.objB = b1;
    // 获取数据
    [_objA handle];
}

@end
