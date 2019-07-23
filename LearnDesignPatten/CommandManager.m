//
//  CommandManager.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "CommandManager.h"

@implementation CommandManager

//命令管理者以单例方式呈现
+ (instancetype)shareInstance{
    static CommandManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    
    return instance;
}

// 【必不可少】
+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self shareInstance];
}

// 【必不可少】
- (id)copyWithZone:(nullable NSZone *)zone{
    return self;
}

- (id)init{
    self = [super init];
    if (self) {
        _arrayCommands = [NSMutableArray array];
    }
    
    return self;
}

+ (void)executeCommand:(Command *)cmd completion:(CommandCompletionCallBack)complteion{
    if (cmd) {
        // 如果命令正在执行不做处理，否则添加并执行命令
        if (![self _isExcutingCommand:cmd]) {
            // 添加到命令容器当中
            [[[self shareInstance] arrayCommands] addObject:cmd];
            // 设置命令执行完成的回调
            cmd.completion = complteion;
            //执行命令
            [cmd execute];
        }
    }
}

+ (void)cnacelCommand:(Command *)cmd{
    if (cmd) {
        // 从命令容器当中移除
        [[[self shareInstance] arrayCommands] removeObject:cmd];
        [cmd cancel];
    }
}

+ (BOOL)_isExcutingCommand:(Command *)cmd{
    if (cmd) {
        NSArray *cmds = [[self shareInstance] arrayCommands];
        for (Command *aCmd in cmds) {
            if (cmd == aCmd) {
                return YES;
            }
        }
    }
    
    return NO;
}
@end
