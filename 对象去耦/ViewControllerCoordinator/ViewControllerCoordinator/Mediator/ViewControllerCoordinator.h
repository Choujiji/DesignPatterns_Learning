//
//  ViewControllerCoordinator.h
//  ViewControllerCoordinator
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class ViewController;

typedef NS_ENUM(NSUInteger, UIBarButtonItemTagType) {
    UIBarButtonItemTagTypeDone,
    UIBarButtonItemTagTypeDetail,
    UIBarButtonItemTagTypeSetting
};

/** 作为VC转场的中介者，管理着所有的VC */
@interface ViewControllerCoordinator : NSObject

/** 根VC */
@property (strong, nonatomic, readonly) IBOutlet ViewController *rootViewController;

/** 当前显示的VC */
@property (strong, nonatomic, readonly) UIViewController *currentViewController;

/** 单例方法 */
+ (ViewControllerCoordinator *)getInstance;

/** ViewController转场请求（这里是每个UIBarButtonItem的action） */
- (IBAction)requestChangingViewControllerByObject:(id)object;

@end
