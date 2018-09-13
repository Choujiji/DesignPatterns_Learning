//
//  ViewControllerCoordinator.m
//  ViewControllerCoordinator
//
//  Created by mac on 2018/9/13.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewControllerCoordinator.h"
#import "ViewController.h"
#import "DetailViewController.h"
#import "SettingViewController.h"

static ViewControllerCoordinator *instance = nil;

@interface ViewControllerCoordinator ()

/** 根VC */
@property (strong, nonatomic) ViewController *rootViewController;

/** 当前显示的VC */
@property (strong, nonatomic) UIViewController *currentViewController;

@end

@implementation ViewControllerCoordinator

#pragma mark - 单例创建
+ (ViewControllerCoordinator *)getInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:nil] init];
    });
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self getInstance];
}

- (instancetype)copy {
    return instance;
}

- (instancetype)mutableCopy {
    return instance;
}

#pragma mark - 转场请求
- (IBAction)requestChangingViewControllerByObject:(id)object {
    if (![object isKindOfClass:[UIBarButtonItem class]]) {
        return;
    }
    UIBarButtonItem *item = (UIBarButtonItem *)object;
    // 根据tag的值，区分转场的VC
    switch (item.tag) {
        case UIBarButtonItemTagTypeDetail: {
            DetailViewController *vc = (DetailViewController *)[self loadViewControllerFromStoryBoardWithID:@"DetailViewController"];
            [self.rootViewController presentViewController:vc animated:YES completion:^{
                self.currentViewController = vc;
            }];
        }
            break;
        case UIBarButtonItemTagTypeSetting: {
            SettingViewController *vc = (SettingViewController *)[self loadViewControllerFromStoryBoardWithID:@"SettingViewController"];
            [self.rootViewController presentViewController:vc animated:YES completion:^{
                self.currentViewController = vc;
            }];
        }
            break;
        default: {
            // Done等
            [self.rootViewController dismissViewControllerAnimated:YES completion:^{
                self.currentViewController = self.rootViewController;
            }];
        }
            break;
    }
}

#pragma mark - 其他
- (UIViewController *)loadViewControllerFromStoryBoardWithID:(NSString *)ID {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [sb instantiateViewControllerWithIdentifier:ID];
}

@end
