//
//  MainViewController.m
//  Adapter
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "MainViewController.h"
#import "SubCommand.h"
#import "ViewController.h"

@interface MainViewController ()

@property (strong, nonatomic) SubCommand *command; // Client
@property (weak, nonatomic) IBOutlet UIView *colorView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.command = [[SubCommand alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // 更新颜色
    self.colorView.backgroundColor = self.command.currentColor;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *destVC = (ViewController *)[segue destinationViewController];
    destVC.command = self.command;
}

@end
