//
//  AOStartViewControllerCollectionViewCell.h
//  MIPTHackOil
//
//  Created by Антон Огурцов on 22/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AOStartViewControllerCollectionViewCell : UICollectionViewCell

@property (nonatomic,strong) UILabel *labelNumber;
@property (nonatomic,strong) UILabel *labelDescription;
@property (nonatomic,strong) UIActivityIndicatorView *spinner;
@property (nonatomic, strong) UIImageView *imageView;
- (instancetype) initWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
