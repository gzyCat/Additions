//
//  UITableViewCell+dequCell.m
//  03-joinTabview
//
//  Created by gaozy on 15/9/23.
//  Copyright (c) 2015年 gaozy. All rights reserved.
//

#import "UITableViewCell+dequCell.h"

@implementation UITableView (dequCell)

- (id)cellforReuseWithCellNibName:(NSString *)className
{
    [self registerNib:[UINib nibWithNibName:className bundle:nil] forCellReuseIdentifier:NSStringFromClass([self class])];
    
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:NSStringFromClass([self class])];
    return cell;
}

@end
