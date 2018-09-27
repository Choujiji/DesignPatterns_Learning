//
//  VideoPlayerProtocol.h
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 策略抽象协议（子类或遵循类实现自己的方法，即实现自己的算法封装） */
@protocol VideoPlayerProtocol <NSObject>

- (void)startPlay;

- (void)pausePlay;

- (void)stopPlay;

@end
