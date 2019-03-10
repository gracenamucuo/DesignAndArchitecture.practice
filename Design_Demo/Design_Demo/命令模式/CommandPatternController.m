
//
//  CommandPatternController.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2018/5/23.
//  Copyright © 2018年 戴运鹏. All rights reserved.
//

#import "CommandPatternController.h"
#import "ComputerBox.h"
#import "ComputerClient.h"
#import "OpenCommand.h"
#import "ComputerCommand.h"
@interface CommandPatternController ()

@end

@implementation CommandPatternController

- (void)viewDidLoad {
    [super viewDidLoad];
    //将命令和接收者组装
    id<ComputerCommand>  openCmd = [ComputerClient configedCommandWithCmdName:@"open"];
    id<ComputerCommand>  resetCmd = [ComputerClient configedCommandWithCmdName:@"reset"];
    //Invoker
    ComputerBox *box = [[ComputerBox alloc]init];
    
    //开机
    [box configOpenCommand:openCmd];//将命令给到触发者。可以将命令与接收者的组装也让Invoker实现。
    [box pressOpenButton];//点击开机按钮。触发命令
    
    //重启
    [box configResetCommand:resetCmd];
    [box pressResetButton];
}


@end
