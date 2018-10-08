//
//  MementoCenter.h
//  MementoLearning
//
//  Created by mac on 2018/10/8.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

/** 存储中心（CareTaker，只负责存储与读取，对其中内容一无所知） */
@interface MementoCenter : NSObject


/**
 保存对象

 @param object 保存的对象
 @param key 指定键
 */
- (void)saveMementoWithObj:(id<MementoProtocol>)object
                       key:(NSString *)key;


/**
 读取对象

 @param key 指定键
 @return 返回存储的对象
 */
- (id)mementoObjectWithKey:(NSString *)key;

@end
