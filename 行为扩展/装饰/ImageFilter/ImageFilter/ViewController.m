//
//  ViewController.m
//  ImageFilter
//
//  Created by mac on 2018/9/19.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"
#import "DecoratorView.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageNamed:@"1"];
    
    // 旋转（装饰一层）
    CGAffineTransform transform = CGAffineTransformMakeRotation(- M_PI / 4.0);
    transform = CGAffineTransformTranslate(transform, -(img.size.width / 2.0), (img.size.height / 8.0));
    id<ImageComponent> transformedImg = [[ImageTransformFilter alloc] initWithComponent:((id<ImageComponent>)img) transform:transform];
    // 阴影（装饰二层）
    id<ImageComponent> shadowedImg = [[ImageShadowFilter alloc] initWithComponent:transformedImg];
    
    
    
    DecoratorView *imageView = [[DecoratorView alloc] initWithFrame:self.view.bounds];
    imageView.image = (UIImage *)shadowedImg;
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
