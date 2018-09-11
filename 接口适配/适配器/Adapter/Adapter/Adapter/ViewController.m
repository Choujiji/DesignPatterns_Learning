//
//  ViewController.m
//  Adapter
//
//  Created by mac on 2018/9/11.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"
#import "SubCommand.h"

@interface ViewController ()
// Adaptee对象（3个UISlider）
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@property (weak, nonatomic) IBOutlet UIView *colorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取调用者并指定代理（适配器调节调用者和原类的关系，自身实现协议方法）
    self.command.adapter = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onVlaueChanged:(UISlider *)slider {
    NSLog(@"%f", slider.value);
    // 发起Client的调用（这里借用了slider的事件触发调用）【实际使用中，可以在任意地方使用Client发起真正的调用】
    [self.command execute];
}

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


// 实现适配器协议的方法
#pragma mark - CommandColorAdapter Method
- (void)command:(Command *)command getColorWithRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue {
    // 在适配器的协议方法中，返回原类的值给调用者
    *red = self.redSlider.value;
    *green = self.greenSlider.value;
    *blue = self.blueSlider.value;
}

- (void)command:(Command *)command didUpdateColor:(UIColor *)color {
    self.colorView.backgroundColor = color;
}
@end
