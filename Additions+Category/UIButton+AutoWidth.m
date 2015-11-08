//
//  UIButton+AutoWidth.m
//  FunnyLife
//
//  Created by gaozy on 15/07/24.
//  Copyright (c) 2015年 gaozy. All rights reserved.
//

#import "UIButton+AutoWidth.h"
#import "NSString+Frame.h"

#define EXPAND_SIZE     2

@implementation UIButton (AutoWidth)

- (float) adjustWidth
{
    float width = [[self titleForState:UIControlStateNormal] widthWithFont:self.titleLabel.font];
    return width;
}

@end
