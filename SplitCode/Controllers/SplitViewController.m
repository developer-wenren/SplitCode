//
//  SplitViewController.m
//  SplitCode
//
//  Created by zjsruxxxy3 on 15/4/27.
//  Copyright (c) 2015年 WR. All rights reserved.
//

#import "SplitViewController.h"
#import "ViewController.h"

@interface SplitViewController ()

@end

@implementation SplitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.maximumPrimaryColumnWidth = ;
    self.minimumPrimaryColumnWidth = 10;

    self.preferredPrimaryColumnWidthFraction = .2;

    
    /*
     UISplitViewControllerDisplayModeAutomatic,
     UISplitViewControllerDisplayModePrimaryHidden,
     UISplitViewControllerDisplayModeAllVisible,
     UISplitViewControllerDisplayModePrimaryOverlay,
     */
    self.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;
    self.view.backgroundColor = [UIColor yellowColor];
    
    NSLog(@"split%@--%@",self,self.viewControllers);
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"SplitView";
    label.center = self.view.center;
    label.bounds = CGRectMake(0, 0, 140, 80);
    
    [self.view addSubview:label];
    
    
//    [self showViewController:viewC sender:nil];
    
}

#warning !!!!---no do------------
-(UIBarButtonItem *)displayModeButtonItem
{
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(test)];
    
    return item;
}


- (void)test {
    
    if (self.preferredDisplayMode != UISplitViewControllerDisplayModePrimaryHidden)
    {
        self.preferredDisplayMode = UISplitViewControllerDisplayModePrimaryHidden;

    }else
    {
        self.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;
    }
    
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
