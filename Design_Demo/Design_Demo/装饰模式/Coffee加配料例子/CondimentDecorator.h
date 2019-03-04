//
//  CondimentDecorator.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "CoffeeComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface CondimentDecorator : CoffeeComponent//继承于组件的装饰者抽象类

- (instancetype)initWithComponent:(CoffeeComponent *)component;
@property (nonatomic,strong)CoffeeComponent *component;


@end

NS_ASSUME_NONNULL_END
