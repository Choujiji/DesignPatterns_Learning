//
//  MementoProtocol.h
//  MementoLearning
//
//  Created by mac on 2018/10/8.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 存储协议（知道如何存储和还原，Memento） */
@protocol MementoProtocol <NSObject>


/**
 保存状态

 @return 提供需要保存的状态对象
 */
- (id)currentState;


/**
 获取读取出的状态

 @param state 读取出的状态对象
 */
- (void)recoverFromState:(id)state;

@end
