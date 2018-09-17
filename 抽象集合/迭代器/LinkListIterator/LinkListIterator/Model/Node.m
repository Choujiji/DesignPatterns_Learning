//
//  Node.m
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithItem:(id)item {
    Node *node = [[[self class] alloc] init];
    node.item = item;
    return node;
}
@end
