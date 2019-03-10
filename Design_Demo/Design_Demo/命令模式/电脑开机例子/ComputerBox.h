//
//  ComputerBox.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/9.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerCommand.h"
NS_ASSUME_NONNULL_BEGIN

@interface ComputerBox : NSObject//Invoker  命令在主箱上

- (void)configOpenCommand:(id<ComputerCommand>)command;
- (void)configResetCommand:(id<ComputerCommand>)command;
- (void)pressOpenButton;
- (void)pressResetButton;

@end

NS_ASSUME_NONNULL_END
