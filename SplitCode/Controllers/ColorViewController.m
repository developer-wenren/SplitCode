//
//  ColorViewController.m
//  SplitCode
//
//  Created by zjsruxxxy3 on 15/4/27.
//  Copyright (c) 2015年 WR. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()<UISplitViewControllerDelegate>

@property(nonatomic,strong)UIBarButtonItem *addBarButton;

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.splitViewController.delegate = self;
    
    self.addBarButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(test)];
    
    
    NSLog(@"%@",self.splitViewController);
    
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.view.backgroundColor = self.bgColor;
    
    self.title = self.headTitle;
    
    self.navigationItem.rightBarButtonItem = self.addBarButton;
    
    self.toolbarItems = @[self.splitViewController.displayModeButtonItem];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    NSLog(@"%d",self.splitViewController.collapsed);// 0 no ,1yes
    
}

- (void)test
{
    
}



- (BOOL)splitViewController:(UISplitViewController *)splitViewController showViewController:(UIViewController *)vc sender:(id)sender
{
    
    return YES;
    
}



// displayMode change 调用
- (void)splitViewController:(UISplitViewController *)svc willChangeToDisplayMode:(UISplitViewControllerDisplayMode)displayMode
{
    NSLog(@"%s+++%ld",__func__,displayMode);
    
}

// 竖屏下显示 primaryViewController(Yes) 不 显示splitViewController(No)
-(BOOL)splitViewController:(UISplitViewController *)splitViewController collapseSecondaryViewController:(UIViewController *)secondaryViewController ontoPrimaryViewController:(UIViewController *)primaryViewController
{
    splitViewController.view.backgroundColor = [UIColor brownColor];
    
    splitViewController.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;
    
    return YES;
}

-(NSUInteger)splitViewControllerSupportedInterfaceOrientations:(UISplitViewController *)splitViewController
{
    return UIInterfaceOrientationMaskAll;
    
}

// 伸展和压缩的情况下返回 指定的视图控制器

//(collapse 为yes 时调用)
-(UIViewController *)primaryViewControllerForCollapsingSplitViewController:(UISplitViewController *)splitViewController
{
    self.navigationController.toolbarHidden = !splitViewController.collapsed;

    return nil;
}


//(collapse 为no 时调用) 先
-(UIViewController *)primaryViewControllerForExpandingSplitViewController:(UISplitViewController *)splitViewController
{
    return nil;
}



// when collapsed is no 调用
-(UISplitViewControllerDisplayMode)targetDisplayModeForActionInSplitViewController:(UISplitViewController *)svc
{
    self.navigationController.toolbarHidden = svc.collapsed;
    
    return UISplitViewControllerDisplayModeAutomatic;
    
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
