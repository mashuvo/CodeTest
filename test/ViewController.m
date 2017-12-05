//
//  ViewController.m
//  test
//
//  Created by Masud Shuvo on 12/5/17.
//  Copyright © 2017 Masud Shuvo. All rights reserved.
//

#import "ViewController.h"
#import "FirstVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    FirstVC *firstVC = [[FirstVC alloc] init];
    [self.navigationController pushViewController:firstVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
