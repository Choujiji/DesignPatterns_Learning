//
//  AVVideoPlayer.m
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AVVideoPlayer.h"
#import "AVOriginPlayer.h"

@interface AVVideoPlayer ()

@property (strong, nonatomic) AVOriginPlayer *player;

@end

@implementation AVVideoPlayer

- (instancetype)init {
    if (self = [super init]) {
        _player = [[AVOriginPlayer alloc] init];
    }
    return self;
}

- (void)pausePlay {
    [self.player pausePlayback];
}

- (void)startPlay {
    [self.player startPlayback];
}

- (void)stopPlay {
    [self.player endPlayback];
}

@end
