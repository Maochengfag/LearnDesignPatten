//
//  BusinessObject.h
//  LearnDesignPatten
//
//  Created by Mac on 19/6/2.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BusinessObject;
typedef void(^ComplteionBlock)(BOOL handled);
typedef void(^ResultBlock)(BusinessObject *handler, BOOL handled);

@interface BusinessObject : NSObject
//** 下一个响应者（响应链构成的关键） */

@property (nonatomic, strong) BusinessObject *nextBusiness;
//响应者的处理方法
- (void)handle:(ResultBlock)result;
//各个业务在该方法当中做实际业务处理
- (void)handleBusinesss:(ComplteionBlock)completion;

@end
