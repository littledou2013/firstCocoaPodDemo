//
//  ViewController.m
//  testTableVIewCellNib
//
//  Created by cxs on 2018/4/16.
//  Copyright © 2018年 cxs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout {
    return [super initWithCollectionViewLayout:layout];
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.collectionView registerNib:[UINib nibWithNibName:@"CustomerCollectionViewCell" bundle:nil] forCellReuseIdentifier:@"CustomerCollectionViewCellNib"];
    [self.collectionView registerNib:[UINib nibWithNibName:@"CustomerCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"CustomerCollectionViewCellNib"];
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomerCollectionViewCellNib" forIndexPath:indexPath];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:@"CustomerTableViewCell" forIndexPath:indexPath];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
