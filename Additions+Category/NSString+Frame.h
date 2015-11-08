//
//  NSString+Frame.h
//  FunnyLife
//
//  Created by gaozy on 14/07/23.
//  Copyright (c) 2014年 gaozy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (Frame)

- (float) heightWithFont: (UIFont *) font withinWidth: (float) width;
- (float) widthWithFont: (UIFont *) font;

@end
