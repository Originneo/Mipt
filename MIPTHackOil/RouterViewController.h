//
//  RouterViewController.h
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RouterViewController : UIViewController

@property(nonatomic, strong, readonly) UITabBarController *tabBarController;
@property(nonatomic, strong) UINavigationController *navBarController;

@end

NS_ASSUME_NONNULL_END
