//
//  Readers.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/3.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "Readers.h"
#import "AbstractSubject.h"
#import "NewsPaper.h"
@implementation Readers

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        _name = name;
    }
    return self;
}

- (void)update:(AbstractSubject *)subject
{
    if ([subject isKindOfClass:[NewsPaper class]]) {
        NewsPaper *paper = (NewsPaper *)subject;
        NSLog(@"%@开始读本期报纸:%@",self.name,paper.content);
    }
}

@end
