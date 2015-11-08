//
//  RotationSupport.m
//  FunnyLife
//
//  Created by gaozy on 15/08/01.
//  Copyright (c) 2015年 gaozy. All rights reserved.
//

#import "RotationSupport.h"

@implementation UIViewController (Rotation)

-(BOOL)shouldAutorotate {
    return NO;
}

-(NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

@end


@implementation UITabBarController (Rotation)

-(BOOL)shouldAutorotate
{
    return [[self.viewControllers lastObject] shouldAutorotate];
}

-(NSUInteger)supportedInterfaceOrientations
{
    return [[self.viewControllers lastObject] supportedInterfaceOrientations];
}

@end

