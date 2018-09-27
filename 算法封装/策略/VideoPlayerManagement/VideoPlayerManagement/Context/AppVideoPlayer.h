//
//  AppVideoPlayer.h
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VideoPlayerProtocol.h"

typedef NS_ENUM(NSUInteger, VideoPlayerType) {
    VideoPlayerType_AV,
    VideoPlayerType_MP
};

/** 提供Client调用，只提供统一API */
@interface AppVideoPlayer : NSObject

- (id)initVideoPlayerWithType:(VideoPlayerType)type;

// 对外提供的api，内部调用真正实例进行实现
- (void)start;

- (void)pause;

- (void)stop;

@end
