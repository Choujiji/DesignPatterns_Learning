//
//  UIImage+ImageBaseFilter.m
//  ImageFilter(category version)
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "UIImage+ImageBaseFilter.h"

@implementation UIImage (ImageBaseFilter)

- (CGContextRef)beginContext {
    // 以图片尺寸创建上下文对象
    CGSize size = [self size];
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    // 返回新创建的上下文对象
    return UIGraphicsGetCurrentContext();
}

- (UIImage *)getImageFromCurrentContext {
    [self drawAtPoint:CGPointZero];
    // 从上下文对象获取图片对象
    return UIGraphicsGetImageFromCurrentImageContext();
}

- (void)endContext {
    // 移除上下文
    UIGraphicsEndImageContext();
}

@end
