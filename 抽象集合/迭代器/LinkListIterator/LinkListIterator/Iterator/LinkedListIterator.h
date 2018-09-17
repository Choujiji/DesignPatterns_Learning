//
//  LinkedListIterator.h
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IteratorProtocol.h"
@class LinkedList;

@interface LinkedListIterator : NSObject <IteratorProtocol>

/** 创建并返回链表的迭代器 */
+ (instancetype)iteratorWithLinkedList:(LinkedList *)linkedList;

@end
