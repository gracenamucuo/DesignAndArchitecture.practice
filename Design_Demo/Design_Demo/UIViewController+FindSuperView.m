//
//  UIViewController+FindSuperView.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/4.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "UIViewController+FindSuperView.h"

@implementation UIViewController (FindSuperView)

- (UIView *)findNearestSuperViewFrom:(UIView *)aView to:(UIView *)bView {
    
    NSArray *aSuperViews = [self superViewsForView:aView];
    NSArray *bSuperViews = [self superViewsForView:bView];
    NSSet *set = [NSSet setWithArray:bSuperViews];
    for (UIView *aSuperView in aSuperViews) {
        if ([set containsObject:aSuperView]) {
            return aSuperView;
        }
    }
    return nil;
}

- (NSArray<UIView *> *)superViewsForView:(UIView *)subView {
    NSMutableArray *views = [NSMutableArray array];
    subView = subView.superview;
    while (subView != nil) {
        [views addObject:subView];
        subView = subView.superview;
    }
    return [views copy];
}

@end
