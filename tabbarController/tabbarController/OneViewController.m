//
//  OneViewController.m
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 WenqiangLI. All rights reserved.
//

#import "OneViewController.h"

#import "SecondTabbarController.h"
#import "ThirdTabbarController.h"
@interface OneViewController ()

@end

@implementation OneViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
     self.navigationItem.title = @"两个TabbarController跳转";
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    [self configurationCell:cell forIndexPath:indexPath];
    return cell;
}

- (void)configurationCell:(UITableViewCell *)cell forIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        cell.textLabel.text = @"支持左滑返回";
    }else{
        cell.textLabel.text = @"不支持左滑返回";
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        SecondTabbarController *tabbarVC = [[SecondTabbarController alloc] init];
        [self.navigationController pushViewController:tabbarVC animated:YES];
        [self.navigationController setNavigationBarHidden:YES animated:NO];
    }else{
        ThirdTabbarController *tabbarVC = [[ThirdTabbarController alloc] init];
        [self.view.window setRootViewController:tabbarVC];
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
