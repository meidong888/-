//
//  AViewController.m
//  测试
//
//  Created by 没懂 on 16/2/22.
//  Copyright © 2016年 com.comelet. All rights reserved.
//
#import "ViewController.h"
#import "AViewController.h"
#import "BViewController.h"
@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButton:@"跳转" sel:@selector(gotoNextController) frame:CGRectMake(0, 200, 100, 50)];
    [self initButton:@"回去" sel:@selector(backLastView) frame:CGRectMake(100, 200, 100, 40)];
    NSLog(@"--%s,",__func__);
}

- (void)backLastView
{
    NSLog(@"self.vc = %@",self.vc);
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"啥时候执行呢");
        self.vc.handle(@"name");
        NSLog(@"--%s,",__func__);
    }];
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:self.name message:self.name delegate:self cancelButtonTitle:@"canle" otherButtonTitles:@"sure", nil];
//    [alert show];
    // 啥情况，要密码了？
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"--%s,",__func__);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"--%s,",__func__);
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"--%s,",__func__);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"--%s,",__func__);
}
// 写自身的类，会有什么情况。
- (void)gotoNextController
{
    BViewController *vc = [[BViewController alloc]init];
    [self presentViewController:vc animated:YES completion:^{
        NSLog(@"BViewController");
        
    }];
}

- (void)initButton:(NSString *)buttontitle sel:(SEL)action frame:(CGRect)frame
{
    UIButton *startBtn = [[UIButton alloc]initWithFrame:frame];
    startBtn.autoresizingMask = UIViewContentModeBottom |UIViewContentModeBottomLeft | UIViewContentModeBottomRight;
    startBtn.backgroundColor = [UIColor grayColor];
    [startBtn setTitle:buttontitle forState:UIControlStateNormal];
    [startBtn addTarget:self action:action forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:startBtn];
}

- (void)dealloc
{
    NSLog(@"--%s,",__func__);
}

@end
