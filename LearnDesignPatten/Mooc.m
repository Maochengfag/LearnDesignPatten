//
//  Mooc.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "Mooc.h"

@implementation Mooc
+ (id)shareInstance{
    
    // 静态局部变量
    static Mooc *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:NULL];
    });
    
    return instance;
}
// 重写方法【必不可少】
+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

// 重写方法【必不可少】
- (id)copyWithZone:(nullable NSZone*)zone{
    return self;
}
@end
