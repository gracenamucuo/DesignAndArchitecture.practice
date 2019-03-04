//
//  MilkDecorator.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "MilkDecorator.h"

@implementation MilkDecorator

- (double)getPrice
{
    NSLog(@"牛奶加了2元");
    return 2 + [self.component getPrice];
}

@end
