//
//  FruitDecorator.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "FruitDecorator.h"

@implementation FruitDecorator

- (double)getPrice
{
    NSLog(@"水果加了5元");
    return 5 + [self.component getPrice];
}

@end
