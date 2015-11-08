//
//  UINavigationBar+States.h
//  09-状态栏
//
//  Created by gaozy on 15/5/9.
//  Copyright (c) 2015年 gaozy. All rights reserved.
//

#import <UIKit/UIKit.h>

// 总体思路：
// 1.在UINavigationBar上增加了个bgContentView
//  [self insertSubview:bgContentView atIndex:0];

// 2.设置backgroundImage 和 shadowImage 使背景变为透明
//  [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
//  [self setShadowImage:[UIImage new]];


@interface UINavigationBar (States)

@property (nonatomic,weak) UIView *bgContentView;
- (void)nav_setBackgroundColor:(UIColor *)backgroundColor;
- (void)nav_clear;

@end
