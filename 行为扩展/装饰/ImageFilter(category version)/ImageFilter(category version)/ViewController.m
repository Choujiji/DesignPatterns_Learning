//
//  ViewController.m
//  ImageFilter(category version)
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageTransformFilter.h"
#import "UIImage+ImageShadowFilter.h"
#import "DecoratorView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageNamed:@"1"];

    // 创建变换（装饰第一次）
    CGAffineTransform transform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    transform = CGAffineTransformTranslate(transform, -(img.size.width / 2.0), (img.size.height / 8.0));
    UIImage *transformedImg = [img imageWithTransform:transform];
    // 添加阴影（装饰第二次）
    UIImage *shadowedImg = [transformedImg imageWithShadow];
    
    // 添加显示
    DecoratorView *imageView = [[DecoratorView alloc] initWithFrame:self.view.bounds];
    imageView.image = shadowedImg;
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
