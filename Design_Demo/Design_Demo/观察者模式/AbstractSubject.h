//
//  AbstractSubject.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/3.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface AbstractSubject : NSObject
@property (nonatomic,strong)NSMutableArray <id<ObserverProtocol>> *observers;

/**
 注册观察者

 @param observer 遵循ObserverProtocol协议的观察者对象
 */
- (void)registerObserver:(id<ObserverProtocol>)observer;

/**
 移除观察者

 @param observer 遵循ObserverProtocol协议的观察者对象
 */
- (void)removeObserver:(id<ObserverProtocol>)observer;


/**
 通知所有的观察者
 */
- (void)notifyObservers;
@end

NS_ASSUME_NONNULL_END

