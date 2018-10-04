//
//  Command.h
//  TVRemoteController
//
//  Created by mac on 2018/10/4.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TV;

/** 电视机功能指令（抽象命令类） */
@interface Command : NSObject {
    TV *_receiver;
}


- (instancetype)initWithReceiver:(TV *)receiver;

/** 指令执行 */
- (void)execute;

/** 指令撤销 */
- (void)undo;
@end
