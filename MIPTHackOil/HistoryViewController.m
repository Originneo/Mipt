//
//  HistoryViewController.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()
@property(nonatomic, strong)UIImageView *allWellsImageView;
@end

@implementation HistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.allWellsImageView = [[UIImageView alloc]init];
    self.allWellsImageView.image =[UIImage imageNamed:@"all_wells"];
//    self.allWellsImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:self.allWellsImageView];
    [self makeConstraints];
}

- (void)makeConstraints
{
    self.allWellsImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.allWellsImageView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.allWellsImageView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [self.allWellsImageView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.allWellsImageView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    [self.allWellsImageView.widthAnchor constraintEqualToConstant:500].active = YES;
    
}

@end
