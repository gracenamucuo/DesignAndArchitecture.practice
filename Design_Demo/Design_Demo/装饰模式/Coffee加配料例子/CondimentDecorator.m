//
//  CondimentDecorator.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "CondimentDecorator.h"

@implementation CondimentDecorator

- (instancetype)initWithComponent:(CoffeeComponent *)component
{
    if (self = [super init]) {
        _component = component;
    }
    return self;
}

@end
