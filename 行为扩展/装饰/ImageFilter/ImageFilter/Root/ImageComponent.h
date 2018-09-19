//
//  ImageComponent.h
//  ImageFilter
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@protocol ImageComponent <NSObject>

/** 注意：
        这里所有的方法都是UIImage自带的，放到这里目的
        只是为了模拟标准的装饰器模式，协议代表了根父类，
        UIImage的扩展类遵循此协议来作为实际类，
        装饰器抽象类遵循此协议来作为装饰器，
        二者拥有相同的根类（即本协议）
 */

@optional

- (void)drawAtPoint:(CGPoint)point;                                                        // mode = kCGBlendModeNormal, alpha = 1.0
- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)drawInRect:(CGRect)rect;                                                           // mode = kCGBlendModeNormal, alpha = 1.0
- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;

- (void)drawAsPatternInRect:(CGRect)rect; // draws the image as a CGPattern

@end
