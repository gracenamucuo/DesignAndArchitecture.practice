//
//  ComputerBox.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/9.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "ComputerBox.h"

@interface ComputerBox ()

@property (nonatomic,strong)id<ComputerCommand> openCommand;
@property (nonatomic,strong)id<ComputerCommand> resetCmd;
@end

@implementation ComputerBox

- (void)configOpenCommand:(id<ComputerCommand>)command
{
    _openCommand = command;
}

- (void)configResetCommand:(id<ComputerCommand>)command
{
    _resetCmd = command;
}


- (void)pressOpenButton
{
    [self.openCommand execute];
}

- (void)pressResetButton
{
    [self.resetCmd execute];
}

@end
