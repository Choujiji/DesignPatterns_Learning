//
//  VideoPlayerAdapter.m
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "VideoPlayerAdapter.h"
#import "NewMPPlayer.h"

@interface VideoPlayerAdapter ()

// 包含原类对象
@property (strong, nonatomic) NewMPPlayer *player;

@end

@implementation VideoPlayerAdapter

- (instancetype)init {
    if (self = [super init]) {
        _player = [[NewMPPlayer alloc] init];
    }
    return self;
}

#pragma mark - 抽象协议方法（适配后的API）
- (void)startPlayback {
    // 调用原方法
    [self.player startPlay];
}

- (void)pausePlayback {
    // 调用原方法
    [self.player pausePlay];
}

- (void)endPlayback {
    // 调用原方法
    [self.player endPlay];
}

@end
