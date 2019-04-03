





//
//  ThirdTabbarController.m
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 WenqiangLI. All rights reserved.
//

#import "ThirdTabbarController.h"

#import "FourViewController.h"

#import "MainNavgationController.h"
@interface ThirdTabbarController ()

@end

@implementation ThirdTabbarController

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
    
}

- (void)setupAllChirldVc{
    
    FourViewController *four = [FourViewController new];
    [self setupChirlVC:four withTitle:@"four" normalImage:[self imageWithString:@""] selectImage:[self imageWithString:@""]];

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
