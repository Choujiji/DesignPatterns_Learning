//
//  WebsiteFactory.m
//  WebsiteManager
//
//  Created by mac on 2018/10/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "WebsiteFactory.h"
#import "ConcreteWebsite.h"

@implementation WebsiteFactory

- (instancetype)init {
    if (self = [super init]) {
        _flyWeights = [NSDictionary dictionary];
    }
    return self;
}

- (id<WebsiteProtocol>)getWebSiteCategory:(NSString *)webKey {
    // 查找已存在的对象
    __block id<WebsiteProtocol> webSite = nil;
    [self.flyWeights enumerateKeysAndObjectsUsingBlock:^(NSString *  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([key isEqualToString:webKey]) {
            webSite = obj;
            *stop = YES;
        }
    }];
    if (!webSite) {
        // 创建新对象
        ConcreteWebsite *web = [[ConcreteWebsite alloc] init];
        web.webName = webKey;
        webSite = web;
        
        // 添加到共享字典容器中
        NSMutableDictionary *mutableDic = [self.flyWeights mutableCopy];
        [mutableDic setValue:webSite forKey:webKey];
        self.flyWeights = [mutableDic copy];
    }
    return webSite;
}

- (NSInteger)webSiteCount {
    return self.flyWeights.count;
}

@end
