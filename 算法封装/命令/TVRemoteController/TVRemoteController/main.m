//
//  main.m
//  TVRemoteController
//
//  Created by mac on 2018/10/4.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TVRemoteController.h"
#import "UpCommand.h"
#import "TV.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 获取电视机
        TV *tv = [[TV alloc] init];
        tv.soundNuber = 15;
        
        // 遥控器
        TVRemoteController *controller = [[TVRemoteController alloc] init];
        controller.command = [[UpCommand alloc] initWithReceiver:tv]; // 遥控器绑定电视机（这里使用加大音量命令类）
        
        NSLog(@"begin %ld", tv.soundNuber);
        
        // 执行命令
        [controller execute];
        
        [controller execute];
        
        NSLog(@"execute result - %ld", tv.soundNuber);
        
        // 撤销命令
        [controller undo];
        
        [controller undo];
        
        [controller undo];

        [controller undo];
        
        NSLog(@"undo result - %ld", tv.soundNuber);

    }
    return 0;
}
