//
//  ComputerSeller.h
//  ComputerMaker1
//
//  Created by mac on 2018/9/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ComputerMaker;
@class Computer;

@interface ComputerSeller : NSObject

- (Computer *)getComputerFromMaker:(ComputerMaker *)maker;

@end
