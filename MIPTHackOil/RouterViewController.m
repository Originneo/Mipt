//
//  RouterViewController.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "RouterViewController.h"
#import "LoginViewController.h"
#import "AOStartViewController.h"
#import "HistoryViewController.h"

@interface RouterViewController ()

@property(nonatomic, strong) UITabBarController *tabBarController;
//@property(nonatomic, strong) UINavigationController *navBarController;

@end

@implementation RouterViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        LoginViewController *loginVC = [LoginViewController new];
        AOStartViewController *startVC = [AOStartViewController new];
        HistoryViewController *historyVC = [HistoryViewController new];
        _navBarController = [[UINavigationController alloc]initWithRootViewController:loginVC];
        [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:71/255. green:155/255. blue:112/255. alpha:1]];
        _navBarController.navigationBar.barTintColor = [UIColor blackColor];
        _tabBarController = [[UITabBarController alloc]init];
        [_tabBarController setViewControllers:(@[startVC, historyVC])];
        _tabBarController.tabBar.barTintColor =[UIColor blackColor];
        _tabBarController.tabBar.tintColor =[UIColor greenColor];
//        [[UITabBar appearance] setTintColor:[UIColor greenColor]];
        startVC.tabBarItem.image = [UIImage imageNamed:@"oil"];
        startVC.tabBarItem.title = @"main";

        historyVC.tabBarItem.image = [UIImage imageNamed:@"history"];
        historyVC.tabBarItem.title = @"Test wells";
        
    }
    return self;
}

-(UINavigationController *)navBarController
{
    if (_navBarController == nil) {
        _navBarController = [[UINavigationController alloc] init];
    }
    return _navBarController;
}
-(UITabBarController *)tabBarController
{
    if (_tabBarController == nil) {
        _tabBarController = [[UITabBarController alloc] init];
    }
    return _tabBarController;
}


@end
