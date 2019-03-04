//
//  UIViewController+FindSuperView.h
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (FindSuperView)
- (UIView *)findNearestSuperViewFrom:(UIView *)aView to:(UIView *)bView;
@end

NS_ASSUME_NONNULL_END