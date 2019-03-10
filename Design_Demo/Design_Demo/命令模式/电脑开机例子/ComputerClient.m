//
//  ComputerClient.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/9.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "ComputerClient.h"
#import "MainBoard.h"
#import "OpenCommand.h"
#import "ResetCommand.h"
@implementation ComputerClient


+ (id<ComputerCommand>)configedCommandWithCmdName:(NSString *)cmdName
{
    MainBoard *mainBoard = [MainBoard new];
    if ([cmdName isEqualToString:@"open"]) {
        OpenCommand *openCmd = [[OpenCommand alloc]initWithReceiver:mainBoard cmdName:cmdName];
        return openCmd;
    }else if ([cmdName isEqualToString:@"reset"]){
        ResetCommand *resetCmd = [[ResetCommand alloc]initWithReceiver:mainBoard cmdName:cmdName];
        return resetCmd;
    }
    return nil;
}

@end
