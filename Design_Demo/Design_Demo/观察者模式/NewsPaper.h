//
//  NewsPaper.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/3.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "AbstractSubject.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewsPaper : AbstractSubject

@property (nonatomic,copy)NSString *content;

@end

NS_ASSUME_NONNULL_END
