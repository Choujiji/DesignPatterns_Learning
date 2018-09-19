//
//  ImageTransformFilter.h
//  ImageFilter
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ImageFilter.h"

@interface ImageTransformFilter : ImageFilter

- (instancetype)initWithComponent:(id<ImageComponent>)component
                        transform:(CGAffineTransform)transform;

@end
