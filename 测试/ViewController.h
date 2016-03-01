//
//  ViewController.h
//  测试
//
//  Created by 没懂 on 16/2/21.
//  Copyright © 2016年 com.comelet. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^handleBackValue) (NSString *name);

@interface ViewController : UIViewController

@property (nonatomic, strong)handleBackValue handle;

@end

