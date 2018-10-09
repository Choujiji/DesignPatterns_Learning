//
//  Command.h
//  Adapter
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/** Client的根类 */
@interface Command : NSObject

@property (strong, nonatomic) UIColor *currentColor;

- (void)execute;

@end
