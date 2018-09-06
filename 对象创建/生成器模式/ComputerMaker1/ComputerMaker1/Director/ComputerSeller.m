//
//  ComputerSeller.m
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ComputerSeller.h"
#import "ComputerMaker.h"

@implementation ComputerSeller

- (Computer *)getComputerFromMaker:(ComputerMaker *)maker {
    // buider生产并返回
    [[[[[maker
         makeMotherboard]
        makeScreen]
       makeKeyboard]
      makeTouchpad]
     makeLoudSpeaker];
    return maker.computer;
}

@end
