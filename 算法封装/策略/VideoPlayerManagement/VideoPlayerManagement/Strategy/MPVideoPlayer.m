//
//  MPVideoPlayer.m
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "MPVideoPlayer.h"
#import "MPOriginPlayer.h"

@interface MPVideoPlayer ()

@property (strong, nonatomic) MPOriginPlayer *player;

@end

@implementation MPVideoPlayer

- (instancetype)init {
    if (self = [super init]) {
        _player = [[MPOriginPlayer alloc] init];
    }
    return self;
}

- (void)pausePlay {
    [self.player pausePlay];
}

- (void)startPlay {
    [self.player startPlay];
}

- (void)stopPlay {
    [self.player endPlay];
}

@end
