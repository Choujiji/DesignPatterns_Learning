//
//  CommandColorAapter.h
//  Adapter
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class Command;

/** Adapter协议 */
@protocol CommandColorAapter <NSObject>

- (void)command:(Command *)command
getColorWithRed:(CGFloat *)red
          green:(CGFloat *)green
           blue:(CGFloat *)blue;

- (void)command:(Command *)command
 didUpdateColor:(UIColor *)color;

@end
