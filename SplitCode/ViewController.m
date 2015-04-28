//
//  ViewController.m
//  SplitCode
//
//  Created by zjsruxxxy3 on 15/4/27.
//  Copyright (c) 2015年 WR. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UISplitViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)splitViewController:(UISplitViewController *)splitViewController showDetailViewController:(UIViewController *)vc sender:(id)sender
{
    return YES;
}

-(BOOL)splitViewController:(UISplitViewController *)splitViewController showViewController:(UIViewController *)vc sender:(id)sender
{
    return YES;
    
}

@end
