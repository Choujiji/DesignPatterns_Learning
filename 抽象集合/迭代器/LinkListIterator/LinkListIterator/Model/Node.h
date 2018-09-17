//
//  Node.h
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

/** 下个节点指针 */
@property (strong, nonatomic) Node *nextNode;

/** 节点内容 */
@property (strong, nonatomic) id item;

/** 创建节点对象 */
+ (instancetype)nodeWithItem:(id)item;


@end
