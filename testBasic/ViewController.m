//
//  ViewController.m
//  testBasic
//
//  Created by guozinong on 16/6/18.
//  Copyright © 2016年 GZN. All rights reserved.
//

#import "ViewController.h"
#import "OOPraiseButton.h"

@interface ViewController ()

@property (nonatomic, strong) OOPraiseButton *waveProgressView;  /*点赞btn*/

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _waveProgressView = [[OOPraiseButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 65, self.view.frame.size.width - 50, 80, 80)];
    [self.view addSubview:_waveProgressView];
    
    _waveProgressView.maxLeft = 50;
    _waveProgressView.maxRight = 100;
    _waveProgressView.maxHeight = 300;
    _waveProgressView.duration = 4;
    _waveProgressView.imageSize = CGSizeMake(40, 40);
    _waveProgressView.images = @[[UIImage imageNamed:@"zan_blue"], [UIImage imageNamed:@"zan_red"], [UIImage imageNamed:@"zan_yellow"]];
    _waveProgressView.isCrit = YES;
    _waveProgressView.critInterval = 9;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(maskViewClicked)];
    [self.view addGestureRecognizer:tap];
}

- (void)maskViewClicked
{
    [self.waveProgressView generateBubbleInRandom];
}

@end
