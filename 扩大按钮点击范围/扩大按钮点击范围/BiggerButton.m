//
//  BiggerButton.m
//  扩大按钮点击范围
//
//  Created by Yep on 2022/8/13.
//

#import "BiggerButton.h"

@implementation BiggerButton

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    //当前btn大小
    CGRect btnBounds = self.bounds;
    //扩大点击区域，想缩小就将-10设为正值
    btnBounds = CGRectInset(btnBounds, -100, -100);
    
    //若点击的点在新的bounds里，就返回YES
    return CGRectContainsPoint(btnBounds, point);
}

@end
