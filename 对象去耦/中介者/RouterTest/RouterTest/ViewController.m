//
//  ViewController.m
//  RouterTest
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"
#import "Router.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Router *router = [Router sharedRouter];
    // 默认跳转回调（设置跳转方式）
    [router setDefaultTargetCompletion:^(UIViewController *targetViewController, NSDictionary *params) {
        [self.navigationController pushViewController:targetViewController animated:YES];
    }];
}

- (IBAction)toDetailVC:(id)sender {
    // 默认跳转方式
    [Router openURL:@"router://DetailViewController"];
    
//    // 默认跳转方式，带参数
//    [Router
//     openURL:@"router://DetailViewController"
//     params:@{
//              @"test": @"123"
//              }];
    
//    // 自定义跳转方式
//    [Router
//     openURL:@"router://DetailViewController"
//     params:@{
//              @"test": @"123"
//              }
//     targetCompletion:^(UIViewController *targetViewController, NSDictionary *params) {
//         [self presentViewController:targetViewController animated:YES completion:nil];
//     }];
}


@end
