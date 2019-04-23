
//
//  MMTabbar.m
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 李文强. All rights reserved.
//

#import "MMTabbar.h"
#define naviBarH ([[UIApplication sharedApplication] statusBarFrame].size.height + 44)
#define ScreenW [UIScreen mainScreen].bounds.size.width

@implementation MMTabbar

- (instancetype)init{
    self = [super init];
    if (self) {
        MMButton *btn = [MMButton buttonWithType:UIButtonTypeCustom];
//        UIButton *btn = [[UIButton alloc]init];
        UIImage *normalButtonBackImage = [UIImage imageNamed:@"videoback"];
        [btn setImage:[UIImage imageNamed:@"invent_add"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"invent_add"] forState:UIControlStateSelected];
        [btn setBackgroundImage:normalButtonBackImage forState:UIControlStateNormal];
        [btn setBackgroundImage:normalButtonBackImage forState:UIControlStateSelected];
        btn.frame = CGRectMake(0, 0, 56, 56);
//        btn.imageEdgeInsets = UIEdgeInsetsMake(-5, 0, 0, 0);
        if (naviBarH > 64) {
            btn.frame = CGRectMake((ScreenW - 56)/2.0, -56*0.25, 56, 56);
        }else{
            btn.frame = CGRectMake((ScreenW - 56)/2.0, -10, 56, 56);
        }
        self.centerBtn = btn;
        [self addSubview:btn];  
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (self.isHidden == NO) {
        CGPoint newPoint = [self convertPoint:point toView:self.centerBtn];
        if ( [self.centerBtn pointInside:newPoint withEvent:event]) {
            return self.centerBtn;
        }else{
            return [super hitTest:point withEvent:event];
        }
    }
    else {
        return [super hitTest:point withEvent:event];
    }
}


@end



@implementation MMButton

- (void)setHighlighted:(BOOL)highlighted {}

@end
