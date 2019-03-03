//
//  ObserverProtocol.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/3.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AbstractSubject;
NS_ASSUME_NONNULL_BEGIN

@protocol ObserverProtocol <NSObject>

/**
 主题状态更新后，得到通知，进而做出对应的响应

 @param subject 主题通过通知传给过来的信息，这里将主题自己传了过来，也可以只是传递一些观察者需要的信息。
 */
- (void)update:(AbstractSubject *)subject;

@end

NS_ASSUME_NONNULL_END
