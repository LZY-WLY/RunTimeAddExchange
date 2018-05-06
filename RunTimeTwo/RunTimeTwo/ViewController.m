//
//  ViewController.m
//  RunTimeTwo
//
//  Created by yfmac001 on 2018/5/6.
//  Copyright © 2018年 yfmac001. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Image.h"
#import "NSObject+Property.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //加载UIImage 返回成功/失败
    UIImage *image = [UIImage imageNamed:@"timg"];
    
    //创建NSObject
    NSObject *object = [[NSObject alloc]init];
    object.name = @"runtime动态添加属性";
    
    NSLog(@"%@", object.name);
}


@end
