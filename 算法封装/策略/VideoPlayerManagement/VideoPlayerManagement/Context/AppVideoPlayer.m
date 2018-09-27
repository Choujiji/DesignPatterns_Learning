//
//  AppVideoPlayer.m
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AppVideoPlayer.h"
#import "AVVideoPlayer.h"
#import "MPVideoPlayer.h"

@interface AppVideoPlayer ()

// 内部维护真正实现算法的实例
@property (strong, nonatomic) id<VideoPlayerProtocol> videoPlayer;

@end

@implementation AppVideoPlayer

- (instancetype)initVideoPlayerWithType:(VideoPlayerType)type {
    if (self = [super init]) {
        switch (type) {
            case VideoPlayerType_AV:
                _videoPlayer = [[AVVideoPlayer alloc] init];
                break;
            case VideoPlayerType_MP:
                _videoPlayer = [[MPVideoPlayer alloc] init];
                break;
            default:
                break;
        }
    }
    return self;
}

- (void)start {
    [self.videoPlayer startPlay];
}

- (void)pause {
    [self.videoPlayer pausePlay];
}

- (void)stop {
    [self.videoPlayer stopPlay];
}

@end
