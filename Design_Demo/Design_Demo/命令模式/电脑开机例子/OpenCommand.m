//
//  OpenCommand.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/9.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "OpenCommand.h"
#import "MainBoard.h"

@interface OpenCommand ()

@property (nonatomic,strong)MainBoard *mainBoard;
@end

@implementation OpenCommand

@synthesize name = _name;

- (instancetype)initWithReceiver:(MainBoard *)mainBoard cmdName:(NSString *)cmdName
{
    if (self = [super init]) {
        _mainBoard = mainBoard;
        _name = cmdName;
    }
    return self;
}

- (void)execute
{
    [self.mainBoard openComputer];
}



@end
