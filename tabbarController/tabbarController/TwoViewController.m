//
//  TwoViewController.m
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 WenqiangLI. All rights reserved.
//

#import "TwoViewController.h"
#import "FirstTabbarController.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"two_支持左滑";
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(backClick)];
    self.navigationItem.leftBarButtonItem = btn;
    
}

- (void)backClick{
    [self.tabBarController.navigationController popViewControllerAnimated:YES];
}

//NSInteger count = self.viewControllers.count;
//self.selectedIndex = count/2;//关联中间按钮
//[self tabBarController:self didSelectViewController:self.viewControllers[self.selectedIndex]];

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
