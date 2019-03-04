//
//  CoffeeComponent.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "CoffeeComponent.h"

@implementation CoffeeComponent//抽象组件，可以写默认实现的方法，也可以用协议实现

- (double)getPrice
{
    return 0.f;
}

@end
