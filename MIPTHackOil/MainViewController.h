//
//  MainViewController.h
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UILabel *equityLabel;
@end

NS_ASSUME_NONNULL_END
