//
//  ImageShadowFilter.m
//  ImageFilter
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ImageShadowFilter.h"

@implementation ImageShadowFilter

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置阴影
    CGSize offset = CGSizeMake(25, 15); // 右上方（坐标系在第一象限）
    CGContextSetShadow(context, offset, 20.0);
}

@end
