//
//  OriginAVPlayer.m
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "OriginAVPlayer.h"

@implementation OriginAVPlayer

- (void)startPlayback {
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
}

- (void)pausePlayback {
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
}

- (void)endPlayback {
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
}

@end
