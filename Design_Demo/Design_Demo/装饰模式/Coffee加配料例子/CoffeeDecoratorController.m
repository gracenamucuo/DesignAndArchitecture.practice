//
//  CoffeeDecoratorController.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "CoffeeDecoratorController.h"
#import "BlackCoffee.h"
#import "MilkDecorator.h"
#import "SoyDecorator.h"
#import "FruitDecorator.h"
@interface CoffeeDecoratorController ()

@end

@implementation CoffeeDecoratorController

- (void)viewDidLoad {
    [super viewDidLoad];
    //纯咖啡
    BlackCoffee *blackCoffee = [[BlackCoffee alloc]init];
    //加奶
    MilkDecorator *milkDecorator = [[MilkDecorator alloc]initWithComponent:blackCoffee];
    //加豆浆
    SoyDecorator *soyDecorator = [[SoyDecorator alloc]initWithComponent:milkDecorator];
    //加水果
    FruitDecorator *fruitDecorator = [[FruitDecorator alloc]initWithComponent:soyDecorator];
    NSLog(@"一共多少钱%f",[fruitDecorator getPrice]);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
