//
//  AOStartViewControllerCollectionViewCell.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 22/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "AOStartViewControllerCollectionViewCell.h"

@implementation AOStartViewControllerCollectionViewCell

- (instancetype) initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    
    _labelNumber = [UILabel new];
    _labelDescription = [UILabel new];
    _imageView = [UIImageView new];
    
  //  _label.frame = self.contentView.frame;
    [self.contentView addSubview:_labelNumber];
    [self.contentView addSubview:_labelDescription];
    [self.contentView addSubview:_imageView];
    
    _labelNumber.textAlignment = NSTextAlignmentLeft;
    _labelDescription.textAlignment = NSTextAlignmentLeft;
    
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    UIFont *theRegularFont = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:27];
    UIFont *theDescrFont = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:22];
    [_labelNumber setFont:theRegularFont];
    [_labelDescription setFont:theDescrFont];
    _labelDescription.numberOfLines = 0;
    _labelNumber.numberOfLines = 0;
    self.contentView.layer.cornerRadius = 25;
    self.contentView.backgroundColor = [UIColor colorWithRed:105/255. green:105/255. blue:105/255. alpha:1];
    _labelNumber.textColor = UIColor.greenColor;
    _labelDescription.textColor = UIColor.whiteColor;
    self.layer.cornerRadius = 25;
    _spinner = [[UIActivityIndicatorView alloc] init];
    [self.contentView addSubview:_spinner];
    [_spinner setCenter:self.contentView.center];
    [self makeConstraints];
    
    return self;
}


- (void)prepareForReuse
{
    self.labelNumber.text = nil;
    self.labelDescription.text = nil;
    self.imageView.image = nil;
    
    [super prepareForReuse];
}

- (void)makeConstraints
{
    _labelNumber.translatesAutoresizingMaskIntoConstraints = NO;
    _labelDescription.translatesAutoresizingMaskIntoConstraints = NO;
    _imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [_labelNumber.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:15].active = YES;
    [_labelNumber.rightAnchor constraintEqualToAnchor:self.contentView.centerXAnchor constant:5].active = YES;
    [_labelNumber.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor constant:25].active = YES;
    [_labelNumber.bottomAnchor constraintEqualToAnchor:self.contentView.centerYAnchor].active = YES;

    [_labelDescription.topAnchor constraintEqualToAnchor:self.contentView.centerYAnchor].active = YES;
    [_labelDescription.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor constant:25].active = YES;
    [_labelDescription.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor].active = YES;
    [_labelDescription.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor].active = YES;

    [_imageView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:50].active = YES;
    [_imageView.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor constant:-15].active = YES;
    [_imageView.leftAnchor constraintEqualToAnchor:self.contentView.centerXAnchor].active = YES;
    [_imageView.bottomAnchor constraintEqualToAnchor:self.contentView.centerYAnchor constant:50].active = YES;
}

@end
