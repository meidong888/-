//
//  ViewController.m
//  测试
//
//  Created by 没懂 on 16/2/21.
//  Copyright © 2016年 com.comelet. All rights reserved.
//

#import "AViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initButton:@"跳转下一个" sel:@selector(gotoNextController) frame:CGRectMake(0, 100, 100, 40)];
    NSLog(@"--%s,",__func__);
    [self initButton:@"玩一玩" sel:@selector(wanYiwan) frame:CGRectMake(100,200,100,40)];

}

- (void)wanYiwan
{
    self.handle = [^(NSString *hah){
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:hah message:hah delegate:self cancelButtonTitle:@"cancle" otherButtonTitles:@"sure", nil];
        [alert show];
    }copy];
//    void(^handle)(NSString *name) = ^(NSString *name){
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:name message:name delegate:self cancelButtonTitle:@"cancle" otherButtonTitles:@"sure", nil];
//                [alert show];
//    };
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    NSLog(@"--%s,",__func__);
//}
//
//- (void)viewDidDisappear:(BOOL)animated
//{
//    [super viewDidDisappear:animated];
//    NSLog(@"--%s,",__func__);
//
//}
//
//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    NSLog(@"--%s,",__func__);
//}
//
//- (void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    NSLog(@"--%s,",__func__);
//}



- (void)gotoNextController
{
    AViewController *vc = [[AViewController alloc]init];
    [self presentViewController:vc animated:YES completion:^{
        NSLog(@"fuck");
        NSLog(@"hahh");
        vc.name = @"hello";
        vc.vc = self;
//        NSLog(@"%p",self);
        NSLog(@"什么方法%s,",__func__);
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
