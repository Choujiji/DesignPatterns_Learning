//
//  WebsiteProtocol.h
//  WebsiteManager
//
//  Created by mac on 2018/10/6.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;

@protocol WebsiteProtocol <NSObject>

- (void)useUser:(User *)user;

@end
