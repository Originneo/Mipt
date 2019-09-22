//
//  MainViewControllerTableViewCell.h
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainViewControllerTableViewCell : UITableViewCell

@property(nonatomic, copy, readonly)UILabel *earthName;
@property(nonatomic, copy, readonly)UILabel *depthOfSearching;
@property(nonatomic, copy, readonly)UILabel *probability;

@end

NS_ASSUME_NONNULL_END
