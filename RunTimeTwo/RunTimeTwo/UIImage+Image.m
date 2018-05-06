//
//  UIImage+Image.m
//  RunTimeTwo
//
//  Created by yfmac001 on 2018/5/6.
//  Copyright © 2018年 yfmac001. All rights reserved.
//

#import "UIImage+Image.h"
#import <objc/runtime.h>

@implementation UIImage (Image)
+ (void)load {
    //方法交换
    //类方法
    Method imageNamedMethod = class_getClassMethod(self, @selector(imageNamed:));
    Method lzy_imageNamedMethod = class_getClassMethod(self, @selector(lzy_imageNamed:));
    method_exchangeImplementations(imageNamedMethod, lzy_imageNamedMethod);
    
    //对象方法
    //class_getInstanceMethod(<#Class  _Nullable __unsafe_unretained cls#>, <#SEL  _Nonnull name#>)
}

///加载图片 返回成功/失败
+ (UIImage *)lzy_imageNamed:(NSString *)name {
    UIImage *image = [self lzy_imageNamed:name];
    if (image) {
        NSLog(@"加载图片成功");
    }else {
        NSLog(@"加载图片失败");
    }
    return image;
}
@end
