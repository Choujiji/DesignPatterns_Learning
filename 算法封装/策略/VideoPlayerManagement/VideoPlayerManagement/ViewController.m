//
//  ViewController.m
//  VideoPlayerManagement
//
//  Created by mac on 2018/9/27.
//  Copyright © 2018年 jiji. All rights reserved.
//

#import "ViewController.h"
#import "AppVideoPlayer.h"

@interface ViewController ()

@property (strong, nonatomic) AppVideoPlayer *videoPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onSelectAVPlayer:(id)sender {
    // 根据需要，创建对应的实例
    self.videoPlayer = [[AppVideoPlayer alloc] initVideoPlayerWithType:VideoPlayerType_AV];
}

- (IBAction)onSelectMPPlayer:(id)sender {
    // 根据需要，创建对应的实例
    self.videoPlayer = [[AppVideoPlayer alloc] initVideoPlayerWithType:VideoPlayerType_MP];
}


- (IBAction)startPlay:(id)sender {
    // 调用统一API进行控制
    [self.videoPlayer start];
}

- (IBAction)pausePlay:(id)sender {
    [self.videoPlayer pause];
}

- (IBAction)stopPlay:(id)sender {
    [self.videoPlayer stop];
}

@end
