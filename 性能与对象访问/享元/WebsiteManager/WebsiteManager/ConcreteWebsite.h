//
//  ConcertWebsite.h
//  WebsiteManager
//
//  Created by mac on 2018/10/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebsiteProtocol.h"

@interface ConcreteWebsite : NSObject <WebsiteProtocol>

@property (copy, nonatomic) NSString *webName;

@end
