//
//  ViewController.m
//  LDCycleScrollView
//
//  Created by cxs on 2018/4/23.
//  Copyright © 2018年 cxs. All rights reserved.
//

#import "ViewController.h"
#import "LDCycleScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LDCycleItem *item = [[LDCycleItem alloc] init];
    item.image = [UIImage imageNamed:@"ld_cycle_imageView_default"];
    LDCycleItem *item2 = [[LDCycleItem alloc] init];
    item2.image = [UIImage imageNamed:@"ld_cycle_imageView_default"];
    LDCycleScrollView *scrollView = [LDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200) items:@[item, item2] direction:LDCycleScrollViewDirectionVertical];
    [self.view addSubview:scrollView];
    
    LDCycleItem *item11= [[LDCycleItem alloc] init];
    item11.image = [UIImage imageNamed:@"ld_cycle_imageView_default"];
    LDCycleItem *item21 = [[LDCycleItem alloc] init];
    item21.image = [UIImage imageNamed:@"ld_cycle_imageView_default"];
    LDCycleScrollView *scrollView1 = [LDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 400, self.view.bounds.size.width, 200) items:@[item11, item21] direction:LDCycleScrollViewDirectionHorizontal];
    [self.view addSubview:scrollView1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
