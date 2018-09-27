//
//  MPVideoPlayer.h
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VideoPlayerProtocol.h"

/** ConcreteStrategy2，遵循根策略并实现自己的功能 */
@interface MPVideoPlayer : NSObject <VideoPlayerProtocol>

@end
