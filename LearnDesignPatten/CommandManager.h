//
//  CommandManager.h
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface CommandManager : NSObject
@property (nonatomic, strong) NSMutableArray <Command *>*arrayCommands;

+ (instancetype)shareInstance;

+ (void)executeCommand:(Command *)cmd completion:(CommandCompletionCallBack)complteion;

+ (void)cnacelCommand:(Command *)cmd;
@end
