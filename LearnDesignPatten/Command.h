//
//  Command.h
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Command;
typedef void(^CommandCompletionCallBack)(Command* cmd);

@interface Command : NSObject

@property (nonatomic, copy) CommandCompletionCallBack completion;

- (void)execute;
- (void)cancel;
- (void)done;

@end
