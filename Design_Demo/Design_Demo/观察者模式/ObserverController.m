//
//  ObserverController.m
//  Design_Demo
//
//  Created by 戴运鹏 on 2019/3/3.
//  Copyright © 2019 戴运鹏. All rights reserved.
//

#import "ObserverController.h"
#import "Readers.h"
#import "NewsPaper.h"
@interface ObserverController ()

@end

@implementation ObserverController

- (void)viewDidLoad {
    [super viewDidLoad];
    NewsPaper *paper = [[NewsPaper alloc]init];
    Readers *read0 = [[Readers alloc]initWithName:@"读者0"];
    Readers *read1 = [[Readers alloc]initWithName:@"读者1"];
    [paper registerObserver:read0];
    [paper registerObserver:read1];
    paper.content = @"时事新闻";
    
    [paper removeObserver:read0];
    paper.content = @"娱乐新闻";
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
