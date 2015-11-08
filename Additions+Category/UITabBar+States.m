//
//  UITabBar+States_h.m
//
//
//  Created by gaozy on 15/6/30.
//  Copyright © 2015年 gaozy. All rights reserved.
//

#import "UITabBar+States.h"
#import <objc/runtime.h>

@implementation UITabBar (States_h)

- (BOOL)needAnmation
{
    NSNumber *numberValue =  objc_getAssociatedObject(self, _cmd);
    return numberValue.boolValue;
}

- (void)setNeedAnmation:(BOOL)needAnmation
{
    NSNumber *number = [NSNumber numberWithBool:needAnmation];
    objc_setAssociatedObject(self, @selector(needAnmation),number , OBJC_ASSOCIATION_ASSIGN);
}

@end
