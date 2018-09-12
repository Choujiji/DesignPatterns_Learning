//
//  main.m
//  CellphoneBridge
//
//  Created by mac on 2018/9/12.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cellphone.h"
#import "iPhoneX.h"
#import "iPhoneFunction.h"
#import "XiaoMiFunction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建小米手机
        Cellphone *xiaoMiPhone = [[Cellphone alloc] init];
        XiaoMiFunction *xiaoMiFunction = [[XiaoMiFunction alloc] init];
        xiaoMiPhone.cellphoneFunction = xiaoMiFunction; // 绑定两部分（桥接）
        [xiaoMiPhone makePhoneCall];
        [xiaoMiPhone sendMessage];
        [xiaoMiPhone openWeChat];
        [xiaoMiPhone playGame];
        NSLog(@"----------------------");
        // 创建iPhone X
        iPhoneX *iPhonex = [[iPhoneX alloc] init];
        iPhoneFunction *iphoneFunction = [[iPhoneFunction alloc] init];
        iPhonex.cellphoneFunction = iphoneFunction; // 绑定两部分（桥接）
        [iPhonex usingFaceIDToUnlock];
        [iPhonex makePhoneCall];
        [iPhonex sendMessage];
        [iPhonex openWeChat];
        [iPhonex playGame];
    }
    return 0;
}
