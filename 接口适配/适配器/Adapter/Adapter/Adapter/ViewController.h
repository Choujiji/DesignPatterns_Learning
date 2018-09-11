//
//  ViewController.h
//  Adapter
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//
//  Adapter类，负责Client与Adaptee进行的调用转换
//  需要Adapter保留Client和Adaptee的对象，实现Adapter协议方法，方法内进行Adaptee的方法调用或数据获取，以适当的方式返回给Client对象

#import <UIKit/UIKit.h>
#import "CommandColorAapter.h"
@class SubCommand;

/** 适配器，遵循适配器协议，且实现协议方法，内部帮助调用者调用原类方法 */
@interface ViewController : UIViewController <CommandColorAapter>

// Client对象
@property (weak, nonatomic) SubCommand *command;

@end

