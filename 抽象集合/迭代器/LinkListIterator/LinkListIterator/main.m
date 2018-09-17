//
//  main.m
//  LinkListIterator
//
//  Created by mac on 2018/9/17.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "LinkedList.h"
#import "LinkedListIterator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        LinkedList *list = [[LinkedList alloc] init];
        [list addItem:@"A"];
        [list addItem:@"B"];
        [list addItem:@"C"];
        [list addItem:@"D"];
        
        // 创建迭代器
        LinkedListIterator *iterator = [LinkedListIterator iteratorWithLinkedList:list];
        Node *node = nil;
        while (node = [iterator nextObject]) {
            NSLog(@"%@", node.item);
        }
    }
    return 0;
}
