//
//  CommandManager.m
//  TVRemoteController
//
//  Created by mac on 2018/10/4.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "TVRemoteController.h"
#import "Command.h"

@interface TVRemoteController ()

/** 命令栈（保存执行过的命令，可用于取出执行命令的对象） */
@property (strong, nonatomic) NSMutableArray <Command *> *commandList;

@end

@implementation TVRemoteController

- (instancetype)init {
    if (self = [super init]) {
        _commandList = [[NSMutableArray alloc] initWithCapacity:10];
    }
    return self;
}

- (void)execute {
    if (!self.command) {
        return;
    }
    // 命令对象执行命令
    [self.command execute];
    // 将命令对象添加到管理栈中
    [self.commandList addObject:self.command];
}

- (void)undo {
    if (!self.commandList.count) {
        NSLog(@"撤销栈无数据~");
        return;
    }
    Command *lastCommand = [self.commandList lastObject];
    // 命令对象撤销命令
    [lastCommand undo];
    // 将命令对象从管理栈移除
    [self.commandList removeLastObject];
}
@end
