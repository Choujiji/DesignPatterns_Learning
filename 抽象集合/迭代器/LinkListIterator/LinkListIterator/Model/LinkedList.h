//
//  LinkedList.h
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Node;

@interface LinkedList : NSObject

/** 头节点指针 */
@property (strong, nonatomic) Node *headNode;

/** 节点数量 */
@property (assign, nonatomic, readonly) NSInteger numberOfNodes;

/** 向链表添加对象（内部自动创建节点并挂载） */
- (void)addItem:(id)item;

@end
