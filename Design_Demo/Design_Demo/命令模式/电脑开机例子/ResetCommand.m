//
//  ResetCommand.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/10.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "ResetCommand.h"
#import "MainBoard.h"

@interface ResetCommand ()

@property (nonatomic,strong)MainBoard *mainBoard;
@end

@implementation ResetCommand
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
    [self.mainBoard resetComputer];
}

@end
