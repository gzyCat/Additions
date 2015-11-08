//
//  UILabel+init.m
//  00-MZLPlay
//
//  Created by gaozy on 14/10/23.
//  Copyright © 2014年 gaozy. All rights reserved.
//

#import "UILabel+init.h"
#import "NSString+Frame.h"

@implementation UILabel (init)


+ (instancetype)labelWithText:(NSString *)text font:(UIFont *)font color:(UIColor *)color origin:(CGPoint)origin
{
    CGFloat width = [text widthWithFont:font];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(origin.x, origin.y, width, 20)];
    label.text = text;
    label.font = font;
    label.textColor = color;
    [label sizeToFit];
    return label;
}

@end
