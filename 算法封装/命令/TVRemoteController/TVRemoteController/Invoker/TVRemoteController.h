//
//  CommandManager.h
//  TVRemoteController
//
//  Created by mac on 2018/10/4.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Command;

/** 电视遥控器（命令管理器，用于触发命令执行和保存命令栈） */
@interface TVRemoteController : NSObject

/** 命令对象 */
@property (strong, nonatomic) Command *command;

/** 执行 */
- (void)execute;

/** 撤销执行 */
- (void)undo;

@end
