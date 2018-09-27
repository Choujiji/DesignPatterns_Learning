//
//  VideoPlayerProtocol.h
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 从OriginAVPlayer中抽象出的协议方法 */
@protocol VideoPlayerProtocol <NSObject>

// 都是从OriginAVPlayer中的公有API
- (void)startPlayback;

- (void)pausePlayback;

- (void)endPlayback;

@end
