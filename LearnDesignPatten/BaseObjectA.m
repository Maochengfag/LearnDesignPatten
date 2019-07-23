//
//  BaseObjectA.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "BaseObjectA.h"

@implementation BaseObjectA
/*
 A1 --> B1、B2、B3         3种
 A2 --> B1、B2、B3         3种
 A3 --> B1、B2、B3         3种
 */
- (void)handle{
    [self.objB fetchData];
}
@end
