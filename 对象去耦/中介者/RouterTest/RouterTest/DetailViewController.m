//
//  DetailViewController.m
//  RouterTest
//
//  Created by mac on 2018/9/14.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "DetailViewController.h"
#import "Router.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    if (!self.navigationController) {
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeSystem];
        closeButton.frame = CGRectMake(10, 30, 60, 40);
        [closeButton setTitle:@"Close" forState:UIControlStateNormal];
        [self.view addSubview:closeButton];
        [closeButton addTarget:self action:@selector(closeCurrentView) forControlEvents:UIControlEventTouchUpInside];
    }
    
    // 显示传值
    if (self.routerParams) {
        UILabel *infoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        [self.view addSubview:infoLabel];
        infoLabel.center = self.view.center;
        infoLabel.text = self.routerParams[@"test"];
        [infoLabel sizeToFit];
    }
}

- (void)closeCurrentView {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
