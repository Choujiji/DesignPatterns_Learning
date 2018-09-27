//
//  ViewController.m
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"
#import "VideoPlayerProtocol.h"
#import "OriginAVPlayer.h"
#import "VideoPlayerAdapter.h"

@interface ViewController ()

/** 播放器实例（这里由于使用了适配器进行扩展，故使用协议实例替代） */
@property (strong, nonatomic) id<VideoPlayerProtocol> player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSelectAVPlayer:(id)sender {
    // 根据需要，创建对应的实例
    self.player = [[OriginAVPlayer alloc] init];
}

- (IBAction)onSelectMPPlayer:(id)sender {
    // 根据需要，创建对应的实例（这里使用了适配器类间接使用了NewMPPlayer）
    self.player = [[VideoPlayerAdapter alloc] init];
}


- (IBAction)startPlay:(id)sender {
    // 调用统一API进行控制
    [self.player startPlayback];
}

- (IBAction)pausePlay:(id)sender {
    [self.player pausePlayback];
}

- (IBAction)stopPlay:(id)sender {
    [self.player endPlayback];
}


@end
