//
//  NSString+Frame.m
//  FunnyLife
//
//  Created by gaozy on 14/07/23.
//  Copyright (c) 2014年 gaozy. All rights reserved.
//

#import "NSString+Frame.h"

@implementation NSString (Frame)

- (float) heightWithFont: (UIFont *) font withinWidth: (float) width
{
    CGRect textRect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                         options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                      attributes:@{NSFontAttributeName:font}
                                         context:nil];
    
    return ceil(textRect.size.height);
}

- (float) widthWithFont: (UIFont *) font
{
    CGRect textRect = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, font.pointSize)
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:@{NSFontAttributeName:font}
                                         context:nil];
    
    return ceil(textRect.size.width);
}

@end
