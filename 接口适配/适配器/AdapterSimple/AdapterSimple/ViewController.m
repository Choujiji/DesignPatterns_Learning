//
//  ViewController.m
//  AdapterSimple
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"
#import "StatisticsSDK/StatisticsSDK.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[MyAPPStatisticsUtil sharedStatistics] onEnterPage:@"MainPage"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
