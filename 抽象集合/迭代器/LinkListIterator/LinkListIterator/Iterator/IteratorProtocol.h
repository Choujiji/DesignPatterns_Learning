//
//  IteratorProtocol.h
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 迭代器协议 */
@protocol IteratorProtocol <NSObject>

- (id)nextObject;

@end
