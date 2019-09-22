//
//  MainViewController.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "MainViewController.h"
#import "MainViewControllerTableViewCell.h"

static NSString * const tableViewReuseIdentifier = @"TableViewReuseIdentifier";
@interface MainViewController ()

@property (nonatomic, strong)UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 450, self.view.frame.size.width, self.view.frame.size.height/2) style:UITableViewStylePlain];
    [self.tableView registerClass:[MainViewControllerTableViewCell class] forCellReuseIdentifier:tableViewReuseIdentifier];
    self.tableView.backgroundColor = UIColor.blackColor;
    [self.view addSubview:self.tableView];
    self.tableView.delegate= self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.imageView];
    [UIView transitionWithView:self.imageView
                      duration:0.1f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        [self.imageView setImage:self.imageView.image];
                    } completion:nil];
    [self makeConstraints];
    
    self.imageView.contentMode = UIViewContentModeScaleToFill;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  100.;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainViewControllerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewReuseIdentifier];
    [cell setSelected:YES animated:YES];
    return cell;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    cell.transform = CGAffineTransformMakeTranslation(0.f, 50);
    cell.layer.shadowColor = [[UIColor greenColor]CGColor];
    cell.layer.shadowOffset = CGSizeMake(10, 50);
    cell.alpha = 0;
    
    [UIView beginAnimations:@"rotation" context:NULL];
    [UIView setAnimationDuration:1.5];
    cell.transform = CGAffineTransformMakeTranslation(0.f, 0);
    cell.alpha = 1;
    cell.layer.shadowOffset = CGSizeMake(0,0);
    [UIView commitAnimations];
}
- (void)makeConstraints
{
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.imageView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.imageView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    [self.imageView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.imageView.bottomAnchor constraintEqualToAnchor:self.tableView.topAnchor].active = YES;
}

@end
