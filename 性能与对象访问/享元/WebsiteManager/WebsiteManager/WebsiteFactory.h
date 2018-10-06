//
//  WebsiteFactory.h
//  WebsiteManager
//
//  Created by mac on 2018/10/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebsiteProtocol.h"

@interface WebsiteFactory : NSObject

/** 资源共享对象容器 */
@property (strong, nonatomic) NSDictionary *flyWeights;

- (id<WebsiteProtocol>)getWebSiteCategory:(NSString *)webKey;

- (NSInteger)webSiteCount;

@end
