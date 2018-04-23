//
//  ViewController.m
//  testContentOffsetReset
//
//  Created by cxs on 2018/3/29.
//  Copyright © 2018年 cxs. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController ()
{
    SubViewController *_subViewController;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)addViewController:(id)sender {
    if (!_subViewController) {
        _subViewController = [[SubViewController alloc] init];
        _subViewController.view.frame = self.view.bounds;
        _subViewController.scrollView.scrollView.contentInset = UIEdgeInsetsMake(100, 0, 100, 0);
        _subViewController.scrollView.scrollView.contentOffset = CGPointMake(0, -100);
    } else {
        [_subViewController.scrollView setFrame:_subViewController.view.bounds];
    }
    [self addChildViewController:_subViewController];
    [self.view addSubview:_subViewController.view];
    [_subViewController didMoveToParentViewController:self];
    
}

- (IBAction)removeViewController:(id)sender {
    [_subViewController willMoveToParentViewController:nil];
    [_subViewController.view removeFromSuperview];
    [_subViewController removeFromParentViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
