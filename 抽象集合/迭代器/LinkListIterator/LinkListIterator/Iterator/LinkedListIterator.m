//
//  LinkedListIterator.m
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "LinkedListIterator.h"
#import "LinkedList.h"
#import "Node.h"

@interface LinkedListIterator ()

/** 所属链表 */
@property (strong, nonatomic) LinkedList *linkedList;

/** 当前指向的链表节点指针 */
@property (strong, nonatomic) Node *currentNode;

@end

@implementation LinkedListIterator

+ (instancetype)iteratorWithLinkedList:(LinkedList *)linkedList {
    LinkedListIterator *iterator = [[LinkedListIterator alloc] init];
    // 保存链表
    iterator.linkedList = linkedList;
    // 设置初始化索引指针
    iterator.currentNode = linkedList.headNode;
    return iterator;
}

#pragma mark - iterator protocol
- (id)nextObject {
    // 指向下一个节点对象，并返回
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

@end
