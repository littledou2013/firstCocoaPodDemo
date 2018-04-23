//
//  ViewController.m
//  testUIViewBackground
//
//  Created by cxs on 2018/4/19.
//  Copyright © 2018年 cxs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *_view;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 59, 59)];
    [_view setBackgroundColor:[UIColor clearColor]];
    _view.layer.borderColor = [UIColor redColor].CGColor;
    _view.layer.borderWidth = 2.f;
    _view.layer.cornerRadius = 5.f;
    _view.clipsToBounds = YES;
    [self.view addSubview: _view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
