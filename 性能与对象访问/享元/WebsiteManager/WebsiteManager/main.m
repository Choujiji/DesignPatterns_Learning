//
//  main.m
//  WebsiteManager
//
//  Created by mac on 2018/10/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebsiteFactory.h"
#import "ConcreteWebsite.h"
#import "User.h"

typedef id<WebsiteProtocol> WebsiteType;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        WebsiteFactory *factory = [[WebsiteFactory alloc] init];
        
        User *user1 = [[User alloc] init];
        user1.userName = @"臭吉吉";
        User *user2 = [[User alloc] init];
        user2.userName = @"jiji";
        User *user3 = [[User alloc] init];
        user3.userName = @"Choujiji2";
        User *user4 = [[User alloc] init];
        user4.userName = @"二哈";
        
        WebsiteType web1 = [factory getWebSiteCategory:@"首页"];
        [web1 useUser:user1];
        
        WebsiteType web2 = [factory getWebSiteCategory:@"个人中心"];
        [web2 useUser:user2];
        
        WebsiteType web3 = [factory getWebSiteCategory:@"新闻中心"];
        [web3 useUser:user3];
        
        WebsiteType web4 = [factory getWebSiteCategory:@"新闻中心"];
        [web4 useUser:user4];
        // web4和web3由于key相同，返回的是相同的实例，起到了内存重用作用（在大量数据时，可以使用相同内存）
        
        NSLog(@"网站总数 - %ld", [factory webSiteCount]);
    }
    return 0;
}
