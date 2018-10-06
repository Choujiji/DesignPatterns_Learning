//
//  ConcertWebsite.m
//  WebsiteManager
//
//  Created by mac on 2018/10/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ConcreteWebsite.h"
#import "User.h"

@implementation ConcreteWebsite

- (void)useUser:(User *)user {
    NSLog(@"网站分类：%@，用户名：%@", self.webName, user.userName);
}

@end
