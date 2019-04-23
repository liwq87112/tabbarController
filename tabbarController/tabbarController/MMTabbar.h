//
//  MMTabbar.h
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 李文强. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class MMButton;

@interface MMTabbar : UITabBar

@property (nonatomic, strong) MMButton *centerBtn;

@end




@interface MMButton : UIButton

@end

NS_ASSUME_NONNULL_END
