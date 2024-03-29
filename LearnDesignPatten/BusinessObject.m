//
//  BusinessObject.m
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "BusinessObject.h"

@implementation BusinessObject
//责任链入口方法
- (void)handle:(ResultBlock)result{
    ComplteionBlock completion = ^(BOOL handled){
       
        //当前业务处理掉了，上抛结果
        if (handled) {
            result(self, handled);
        }else{
            //沿着责任链，指派给下一个业务处理
            if (self.nextBusiness) {
                [self.nextBusiness handle:result];
            }else{
                result(nil,NO);
            }
        }
    };
    //当前业务进行处理
    [self handleBusinesss:completion];

}

- (void)handleBusinesss:(ComplteionBlock)completion {
    /*
     业务逻辑处理
     如网络请求、本地照片查询等
     */

}

@end
