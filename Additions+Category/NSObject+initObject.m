//
//  NSObject+initObject.m
//  
//
//  Created by gaozy on 14/10/22.
//  Copyright © 2014年 gaozy. All rights reserved.
//

#import "NSObject+initObject.h"

@implementation NSObject (initObject)

+ (id)objcetWithDict:(NSDictionary*) dict
{
    return [[self alloc] initWithDict:dict];
}

- (id)initWithDict:(NSDictionary *)dict
{
    if (self = [self init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

@end
