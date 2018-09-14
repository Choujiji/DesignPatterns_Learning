//
//  AbstractColleague.m
//  Buy&SellHouse
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "AbstractColleague.h"
#import "AbstractMediator.h"

@interface AbstractColleague ()

@property (weak, nonatomic) AbstractMediator *mediator;

@end

@implementation AbstractColleague

- (void)entrustToMediator:(AbstractMediator *)mediator {
    self.mediator = mediator;
    NSLog(@"%@委托给%@", self.name, mediator.name);
}

@end
