//
//  ImageTransformFilter.m
//  ImageFilter
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ImageTransformFilter.h"

@interface ImageTransformFilter ()

@property (assign, nonatomic) CGAffineTransform transform;

@end

@implementation ImageTransformFilter

- (instancetype)initWithComponent:(id<ImageComponent>)component
                        transform:(CGAffineTransform)transform {
    if (self = [super initWithComponent:component]) {
        _transform = transform;
    }
    return self;
}

- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 合成矩阵坐标系
    CGContextConcatCTM(context, self.transform);
}

@end
