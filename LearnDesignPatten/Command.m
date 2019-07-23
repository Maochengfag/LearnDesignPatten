//
//  Command.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "Command.h"
#import "CommandManager.h"

@implementation Command
- (void)execute{
    [self done];
}

- (void)cancel{
    self.completion = nil;
}

- (void)done{
    __weak __typeof(self)wself = self;
    dispatch_async(dispatch_get_main_queue(), ^{
       
        if (wself.completion) {
            wself.completion(wself);
        }
        
        wself.completion = nil;
        [[CommandManager shareInstance].arrayCommands removeObject:wself];
    });
}
@end
