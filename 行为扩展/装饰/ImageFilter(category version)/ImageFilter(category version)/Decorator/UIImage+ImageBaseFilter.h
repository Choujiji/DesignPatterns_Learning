//
//  UIImage+ImageBaseFilter.h
//  ImageFilter(category version)
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageBaseFilter)

- (CGContextRef)beginContext;

- (UIImage *)getImageFromCurrentContext;

- (void)endContext;

@end
