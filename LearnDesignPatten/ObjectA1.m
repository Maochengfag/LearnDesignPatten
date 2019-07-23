//
//  ObjectA1.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "ObjectA1.h"

@implementation ObjectA1
- (void)handle{
    // before 业务逻辑操作
    NSLog(@"before 业务逻辑操作");
    
    [super handle];
    
    NSLog(@"after 业务逻辑操作");
    // after 业务逻辑操作
}
@end
