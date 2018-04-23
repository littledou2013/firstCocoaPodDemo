//
//  SubViewController.m
//  testContentOffsetReset
//
//  Created by cxs on 2018/3/29.
//  Copyright © 2018年 cxs. All rights reserved.
//

#import "SubViewController.h"
#import <WebKit/WebKit.h>

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WKWebView *wkWebView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    self.scrollView = wkWebView;
    [self.view addSubview:self.scrollView];
    [self.scrollView.scrollView setContentSize:CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height * 2)];
    [wkWebView.scrollView setBackgroundColor:[UIColor redColor]];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height * 2)];
    [button setBackgroundColor:[UIColor blueColor]];
    [wkWebView.scrollView addSubview:button];
    [button addTarget:self action:@selector(removeViewController:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)removeViewController:(id)sender {
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
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
