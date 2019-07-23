//
//  Hook.h
//  LearnDesignPatten
//
//  Created by Mac on 19/6/3.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hook : NSObject
+ (void)hookClass:(Class)classObject fromSelector:(SEL)fromSelector toSelector:(SEL)toSelector;

@end
