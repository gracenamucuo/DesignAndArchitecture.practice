//
//  NewsPaper.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/3.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "NewsPaper.h"

@implementation NewsPaper

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.observers = [NSMutableArray array];
    }
    return self;
}

- (void)registerObserver:(id<ObserverProtocol>)observer
{
    if ([self.observers containsObject:observer]) {
        return;
    }
    [self.observers addObject:observer];
}

- (void)removeObserver:(id<ObserverProtocol>)observer
{
    [self.observers removeObject:observer];
}

- (void)notifyObservers
{
    for (id<ObserverProtocol> observer in self.observers) {
        [observer update:self];
    }
}

- (void)setContent:(NSString *)content
{
    _content = content;//这里一定要先更新数据，再将通知发送出去。
    [self notifyObservers];
}

@end
