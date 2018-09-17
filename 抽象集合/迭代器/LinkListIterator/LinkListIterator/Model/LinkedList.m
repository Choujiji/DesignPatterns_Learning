//
//  LinkedList.m
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"

@implementation LinkedList

- (instancetype)init {
    if (self = [super init]) {
        // 初始化头指针（用于迭代器指向头指针）
        _headNode = [[Node alloc] init];
    }
    return self;
}

- (void)addItem:(id)item {
    if (!self.headNode) {
        // 空链表，创建头节点
        self.headNode = [Node nodeWithItem:item];
    } else {
        // 添加节点到链表（内部自动寻找添加到链表尾部）
        [self addItem:item node:self.headNode];
    }
}

- (void)addItem:(id)item node:(Node *)node {
    if (!node.nextNode) {
        // 当前是尾节点，创建新的直接放到后面
        node.nextNode = [Node nodeWithItem:item];
    } else {
        // 当前非尾节点，继续往后遍历，直到放到最后
        [self addItem:item node:node.nextNode];
    }
    // 此函数可看出，头节点不包含数据域
}

@end
