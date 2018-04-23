//
//  ViewController.m
//  testAppLife
//
//  Created by cxs on 2018/4/10.
//  Copyright © 2018年 cxs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel  *_label;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _label = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    [self.view addSubview:_label];
    [_label setBackgroundColor:[UIColor redColor]];
    [_label setTextColor:[UIColor whiteColor]];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateLable) name:UIApplicationWillEnterForegroundNotification object:nil];
    
//    NSAssert(0, @"错误");
}

- (void)updateLable {
    [_label setText:[NSString stringWithFormat:@"%@+%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"abc"], [[NSUserDefaults standardUserDefaults] objectForKey:@"bcd"]]];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [_label setText:[NSString stringWithFormat:@"%@+%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"abc"], [[NSUserDefaults standardUserDefaults] objectForKey:@"bcd"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
