//
//  DownCommand.m
//  TVRemoteController
//
//  Created by mac on 2018/10/4.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "DownCommand.h"
#import "TV.h"

@implementation DownCommand

- (void)execute {
    _receiver.soundNuber -= 1;
}

- (void)undo {
    _receiver.soundNuber += 1;
}

@end
