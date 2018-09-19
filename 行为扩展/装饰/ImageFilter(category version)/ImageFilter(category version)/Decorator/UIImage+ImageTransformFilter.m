//
//  UIImage+ImageTransformFilter.m
//  ImageFilter(category version)
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "UIImage+ImageTransformFilter.h"
#import "UIImage+ImageBaseFilter.h"

@implementation UIImage (ImageTransformFilter)

- (UIImage *)imageWithTransform:(CGAffineTransform)transform {
    CGContextRef context = [self beginContext];
    // 变换
    CGContextConcatCTM(context, transform);
    // 绘制图像
    UIImage *image =[self getImageFromCurrentContext];
    
    [self endContext];
    
    return image;
}

@end
