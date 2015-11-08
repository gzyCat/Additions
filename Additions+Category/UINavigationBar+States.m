//
//  UINavigationBar+States.m
//  09-状态栏
//
//  Created by gaozy on 15/5/9.
//  Copyright (c) 2015年 gaozy. All rights reserved.
//

#import "UINavigationBar+States.h"
#import <objc/runtime.h>

@implementation UINavigationBar (States)

- (void)setBgContentView:(UIView *)bgContentView
{
    objc_setAssociatedObject(self, @selector(bgContentView), bgContentView, OBJC_ASSOCIATION_ASSIGN);
}

- (UIView *)bgContentView
{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)nav_setBackgroundColor:(UIColor *)backgroundColor
{
    if (self.bgContentView == nil) {
        UIView *bgContentView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, 375, 64)];
        //bgContentView.backgroundColor = [UIColor blueColor];
        [self insertSubview:bgContentView atIndex:0];
        
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        [self setShadowImage:[UIImage new]];
        
        self.bgContentView = bgContentView;
    }
    self.bgContentView.backgroundColor = backgroundColor;
}

- (void)nav_clear
{
    [self setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self.bgContentView removeFromSuperview];
    self.bgContentView = nil;
}

@end
