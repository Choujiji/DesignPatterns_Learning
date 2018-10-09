//
//  SubCommand.h
//  Adapter
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//
//  Client端只要保留Adapter即可（这里是任何遵循Adapter协议的对象），与Adaptee原类不发生耦合

#import "Command.h"
#import "CommandColorAapter.h"

/** Client的子类 */
@interface SubCommand : Command

@property (weak, nonatomic) id<CommandColorAapter> adapter;

@end
