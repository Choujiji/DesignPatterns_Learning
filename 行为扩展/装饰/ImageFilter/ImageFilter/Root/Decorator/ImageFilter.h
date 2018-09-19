//
//  ImageFilter.h
//  ImageFilter
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageComponent.h"

/** 装饰器抽象类 */
@interface ImageFilter : NSObject <ImageComponent>

/** 容器类对象的引用，即装饰的原类 */
@property (strong, nonatomic) id<ImageComponent> component;

- (instancetype)initWithComponent:(id<ImageComponent>)component;

// 消息转发（这里不实现根协议方法，只是吧SEL转发给component【UIImage可以实现】）
- (id)forwardingTargetForSelector:(SEL)aSelector;

/** 添加的功能（抽象方法，子类装饰器实现） */
- (void)apply;

@end
