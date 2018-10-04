//
//  Command.m
//  TVRemoteController
//
//  Created by mac on 2018/10/4.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Command.h"

@implementation Command

- (instancetype)initWithReceiver:(TV *)receiver {
    if (self = [super init]) {
        _receiver = receiver;
    }
    return self;
}

- (void)execute {
    
}

- (void)undo {
    
}

@end
