//
//  NSObject+Property.h
//  RunTimeTwo
//
//  Created by yfmac001 on 2018/5/6.
//  Copyright © 2018年 yfmac001. All rights reserved.
//  runtime 动态添加属性 给NSObject添加一个 name 属性

#import <Foundation/Foundation.h>

@interface NSObject (Property)
///名称 分类中的属性  只有声明的setter,getter方法, 没有实现的setter,getter方法, 也没有下划线成员变量
@property (nonatomic, copy) NSString *name;
@end
