//
//  CoolTarget.h
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"

@interface CoolTarget : NSObject
@property (nonatomic, strong) Target *target;

- (void)reqeuest;


@end
