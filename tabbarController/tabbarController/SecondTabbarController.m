//
//  SecondTabbarController.m
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 WenqiangLI. All rights reserved.
//

#import "SecondTabbarController.h"

#import "TwoViewController.h"
#import "ThreeViewController.h"

#import "MainNavgationController.h"

#import "MMTabbar.h"

@interface SecondTabbarController ()



@end

@implementation SecondTabbarController

- (instancetype)init{
    self = [super init];
    if (self) {
        [self customizeTabBarAppearance];
    }
    return self;
}

- (void)customizeTabBarAppearance{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //字体颜色
    dict[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    NSMutableDictionary *dict2 = [NSMutableDictionary dictionary];
    dict2[NSForegroundColorAttributeName] = [UIColor blackColor];
    dict2[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    UITabBarItem *tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:dict forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:dict2 forState:UIControlStateSelected];
    
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupAllChirldVc];
    
    [self setCustomtabbar];
}

- (void)setupAllChirldVc{
   
    TwoViewController *two = [TwoViewController new];
    [self setupChirlVC:two withTitle:@"two" normalImage:[self imageWithString:@""] selectImage:[self imageWithString:@""]];
    
    [self setupChirlVC:[UIViewController new] withTitle:@"" normalImage:[self imageWithString:@""] selectImage:[self imageWithString:@""]];//备用
    
    ThreeViewController *three = [ThreeViewController new];
    [self setupChirlVC:three withTitle:@"three" normalImage:[self imageWithString:@""] selectImage:[self imageWithString:@""]];
   
}

- (void)setCustomtabbar{
    MMTabbar *tabbar = [[MMTabbar alloc]init];
    [self setValue:tabbar forKeyPath:@"tabBar"];
    [tabbar.centerBtn addTarget:self action:@selector(centerBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)centerBtnClick:(UIButton *)btn{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:@"点击了" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}



- (void)setupChirlVC:(UIViewController *)vc withTitle:(NSString *)title normalImage:(UIImage *)normaImage selectImage:(UIImage *)selectImage{
    
    MainNavgationController *navgationController = [[MainNavgationController alloc] initWithRootViewController:vc];
    [self addChildViewController:navgationController];
    navgationController.tabBarItem.title = title;
    navgationController.tabBarItem.image = normaImage;
    navgationController.tabBarItem.selectedImage = selectImage;
    
}

- (UIImage *)imageWithString:(NSString *)imageString{
    
    UIImage *image = [UIImage imageNamed:imageString];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
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
