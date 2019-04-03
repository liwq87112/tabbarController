//
//  ThreeViewController.m
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 WenqiangLI. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.navigationItem.title = @"three支持左滑";
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(backClick)];
    self.navigationItem.leftBarButtonItem = btn;

}

- (void)backClick{
    [self.tabBarController.navigationController popViewControllerAnimated:YES];
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
