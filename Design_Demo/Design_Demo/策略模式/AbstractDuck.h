//
//  AbstractDuck.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2018/6/8.
//  Copyright © 2018年 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StrategyBehaviorProtocol.h"
@interface AbstractDuck : NSObject
- (instancetype)initWithBehavior:(id<StrategyBehaviorProtocol>)behavior;
- (void)display;//外观
@end
