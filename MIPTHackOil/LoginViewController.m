//
//  ViewController.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "LoginViewController.h"
#import "RouterViewController.h"
@interface LoginViewController ()

@property(nonatomic, strong)UIButton* autorizationButton;
@property(nonatomic, strong)RouterViewController* router;
@property(nonatomic, strong)UIImageView* imageViewBarrel;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.autorizationButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.autorizationButton.backgroundColor = [UIColor colorWithRed:190/255. green:40/255. blue:190/255. alpha:1];
    [self.view addSubview:self.autorizationButton];
   
    self.autorizationButton.layer.cornerRadius = 25;
    self.autorizationButton.layer.borderWidth = 0.5;
    self.autorizationButton.layer.borderColor = UIColor.blackColor.CGColor;
    
    [self.autorizationButton setTitle:@"Начать работу" forState:UIControlStateNormal];
    self.autorizationButton.tintColor = [UIColor whiteColor];
    [self.autorizationButton addTarget:self action:@selector(openMainViewContoller) forControlEvents:UIControlEventTouchUpInside];
    
    self.imageViewBarrel = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"oil_barrel"]];
    [self.view addSubview:self.imageViewBarrel];
    [self makeConstraints];
}

#pragma mark -makeConstraints

- (void)makeConstraints
{
    self.autorizationButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageViewBarrel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.autorizationButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0].active = YES;
    [self.autorizationButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-140].active = YES;
    [self.autorizationButton.widthAnchor constraintEqualToConstant:250].active = YES;
    [self.autorizationButton.heightAnchor constraintEqualToConstant:50].active = YES;
    
    [self.imageViewBarrel.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor constant:0].active = YES;
    [self.imageViewBarrel.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-365].active = YES;
}

- (void)openMainViewContoller
{
    self.router = [RouterViewController new];
    [self.navigationController pushViewController:self.router.tabBarController animated:YES];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}


@end
