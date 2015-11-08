//
//  RotationSupport.h
//  FunnyLife
//
//  Created by gaozy on 14/08/01.
//  Copyright (c) 2015年 gaozy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Rotation)

-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;

@end

@interface UITabBarController (Rotation)

-(BOOL)shouldAutorotate;
-(NSUInteger)supportedInterfaceOrientations;

@end