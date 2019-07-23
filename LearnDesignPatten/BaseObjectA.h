//
//  BaseObjectA.h
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseObjectB.h"
//** 桥接模式的核心实现 */
@interface BaseObjectA : NSObject
@property (nonatomic, strong) BaseObjectB *objB;

//获取数据
- (void)handle;
@end
