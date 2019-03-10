//
//  OpenCommand.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/9.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ComputerCommand.h"
@class MainBoard;
NS_ASSUME_NONNULL_BEGIN

@interface OpenCommand : NSObject<ComputerCommand>

- (instancetype)initWithReceiver:(MainBoard *)mainBoard cmdName:(NSString *)cmdName;
@end

NS_ASSUME_NONNULL_END
