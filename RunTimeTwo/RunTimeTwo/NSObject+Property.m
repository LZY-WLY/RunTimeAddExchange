//
//  NSObject+Property.m
//  RunTimeTwo
//
//  Created by yfmac001 on 2018/5/6.
//  Copyright © 2018年 yfmac001. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/runtime.h>
@implementation NSObject (Property)
- (void)setName:(NSString *)name {
    //添加属性 与 类关联
    objc_setAssociatedObject(self, "name", name, OBJC_ASSOCIATION_COPY);
}
- (NSString *)name {
    return objc_getAssociatedObject(self, "name");
}
@end
