//
//  Readers.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/3.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Readers : NSObject<ObserverProtocol>

- (instancetype)initWithName:(NSString *)name;

@property (nonatomic,copy)NSString *name;
@end

NS_ASSUME_NONNULL_END
