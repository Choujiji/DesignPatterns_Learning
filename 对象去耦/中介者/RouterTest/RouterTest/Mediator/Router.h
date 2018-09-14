//
//  Router.h
//  RouterTest
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/** 目标ViewController创建完成的指定回调类型 */
typedef void(^RouterTargetCompletion)(UIViewController *targetViewController, NSDictionary *params);

/** 目标ViewController创建完成的默认回调类型 */
typedef void(^DefaultRouterTargetCompletion)(UIViewController *targetViewCController, NSDictionary *params);

@interface Router : NSObject

//@property (weak, nonatomic) UINavigationController *navigationController;

/** 目标ViewController创建完成的默认回调 */
@property (copy, nonatomic) DefaultRouterTargetCompletion defaultTargetCompletion;

+ (Router *)sharedRouter;

/** 跳转至指定ViewController */
+ (void)openURL:(NSString *)routerURL;

/** 跳转至指定ViewController，并带有参数 */
+ (void)openURL:(NSString *)routerURL
         params:(NSDictionary *)params;

/** 跳转至指定ViewController，并带有参数，使用自定义跳转 */
+ (void)openURL:(NSString *)routerURL
         params:(NSDictionary *)params
targetCompletion:(RouterTargetCompletion)completion;

+ (NSString *)routerURLPrefix;
+ (NSString *)classNamePostfix;

@end

@interface NSObject (RouterParameter)

/** 路由跳转参数 */
@property (strong, nonatomic) NSDictionary *routerParams;

@end
