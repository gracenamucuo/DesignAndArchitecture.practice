//
//  SoyDecorator.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "SoyDecorator.h"

@implementation SoyDecorator

- (double)getPrice
{
    NSLog(@"豆浆加了3元");
    return 3 + [self.component getPrice];
}

@end
