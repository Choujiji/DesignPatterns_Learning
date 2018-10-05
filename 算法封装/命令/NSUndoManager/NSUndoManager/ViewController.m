//
//  ViewController.m
//  NSUndoManager
//
//  Created by mac on 2018/10/5.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSUndoManager *myUndoManager;
/** 值显示label */
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

/** 记录label值 */
@property (assign, nonatomic) NSInteger index;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myUndoManager = [[NSUndoManager alloc] init];
    
    self.index = 0;
    self.valueLabel.text = [NSString stringWithFormat:@"%ld", self.index];
}

- (IBAction)setLabelValueMethod1:(id)sender {
    // 更新index值
    self.index += 1;
    // 更新UI配置
    [self setLabelValueForMethod1:[NSString stringWithFormat:@"%ld", self.index]];
}

- (void)setLabelValueForMethod1:(NSString *)value {
    NSString *originText = self.valueLabel.text;
    if (![originText isEqualToString:value]) {
        // 设置新值
        self.valueLabel.text = value;
        // 配置undo（设置为旧值）
        [self.myUndoManager registerUndoWithTarget:self selector:@selector(setLabelValueForMethod1:) object:originText];
        // 重设index的值（用于undo时更新index值）
        self.index = self.valueLabel.text.integerValue;
    }
}

- (IBAction)setLabelValueMethod2:(id)sender {
    // 更新index值
    self.index += 1;
    // 更新UI配置
    [self setLabelValueForMethod2:[NSString stringWithFormat:@"%ld", self.index]];
}

- (void)setLabelValueForMethod2:(NSString *)value {
    NSString *originText = self.valueLabel.text;
    if (![originText isEqualToString:value]) {
        // 设置新值
        self.valueLabel.text = value;
        
        // 设置undo（用invocation方式）
        id proxyObj = [self.myUndoManager prepareWithInvocationTarget:self]; // undo对象（返回转发对象）
        [proxyObj setLabelValueForMethod2:originText]; // 直接调用设置undo（由于proxyObj是转发对象，会触发消息转发，给对应的类实例执行）
        
        // 重设index的值（用于undo时更新index值）
        self.index = self.valueLabel.text.integerValue;
    }
}

- (IBAction)undoAction:(id)sender {
    if (![self.myUndoManager canUndo]) {
        return;
    }
    [self.myUndoManager undo];
}

- (IBAction)redoAction:(id)sender {
    if (![self.myUndoManager canRedo]) {
        return;
    }
    [self.myUndoManager redo];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    // 这里只是返回自己的实例方法签名
    NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:aSelector];
    NSLog(@"%@", signature.description);
    return signature;
    // 此方法可以不重写，通过NSInvocation调用undo时系统会调用默认实现
}


@end
