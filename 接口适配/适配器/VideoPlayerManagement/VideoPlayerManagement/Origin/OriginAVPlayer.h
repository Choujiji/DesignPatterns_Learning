//
//  OriginAVPlayer.h
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VideoPlayerProtocol.h"

/** 原始功能类 */
@interface OriginAVPlayer : NSObject <VideoPlayerProtocol>

- (void)startPlayback;

- (void)pausePlayback;

- (void)endPlayback;

@end
