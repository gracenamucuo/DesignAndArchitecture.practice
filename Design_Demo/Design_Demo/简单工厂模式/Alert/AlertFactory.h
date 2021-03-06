//
//  AlertFactory.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/1/23.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlertShowProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface AlertFactory : NSObject
+ (id<AlertShowProtocol>)createConfirmAlert;
+ (id<AlertShowProtocol>)createSelectAlert;
@end

NS_ASSUME_NONNULL_END
