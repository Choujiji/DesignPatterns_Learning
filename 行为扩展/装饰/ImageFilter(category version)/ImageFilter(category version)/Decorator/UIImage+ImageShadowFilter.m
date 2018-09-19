//
//  UIImage+ImageShadowFilter.m
//  ImageFilter(category version)
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "UIImage+ImageShadowFilter.h"
#import "UIImage+ImageBaseFilter.h"

@implementation UIImage (ImageShadowFilter)

- (UIImage *)imageWithShadow {
    CGContextRef context = [self beginContext];
    
    // 设置阴影（右上方）
    CGSize offset = CGSizeMake(25, 20);
    CGContextSetShadow(context, offset, 20);
    
    // 绘制图片
    UIImage *image = [self getImageFromCurrentContext];
    
    [self endContext];
    
    return image;
}

@end
