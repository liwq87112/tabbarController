//
//  AppDelegate.h
//  tabbarController
//
//  Created by 李文强 on 2019/4/3.
//  Copyright © 2019年 WenqiangLI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

