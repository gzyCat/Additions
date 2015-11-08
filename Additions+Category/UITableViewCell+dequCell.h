//
//  UITableViewCell+dequCell.h
//  03-joinTabview
//
//  Created by gaozy on 15/8/23.
//  Copyright (c) 2015年 gaozy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (dequCell)

- (id)cellforReuseWithCellNibName:(NSString *)className;

@end
