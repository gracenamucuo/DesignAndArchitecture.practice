//
//  ComputerCommand.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/9.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ComputerCommand <NSObject>

@property (nonatomic,copy)NSString *name;
- (void)execute;

@end

NS_ASSUME_NONNULL_END
