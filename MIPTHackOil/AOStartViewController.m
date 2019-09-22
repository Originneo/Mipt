//
//  AOStartViewController.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 22/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "AOStartViewController.h"
#import "AOStartViewControllerCollectionViewCell.h"
#import "RouterViewController.h"

#import "AOPictureViewController.h"

#import "MainViewController.h"

static NSString * const collectionViewCellIdent = @"CollectionViewCellIdent";

static NSUInteger const countOfPlaces = 5;

@interface AOStartViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property(nonatomic, strong)UICollectionView* collectionView;
@property(nonatomic, strong)NSMutableArray<UILabel *> *labelsArray;
@property(nonatomic, strong)NSArray *numberOfPlace;
@property(nonatomic, strong)NSArray *equityOfPlace;
@property(nonatomic, strong)NSArray *imageArray;
@property(nonatomic, strong)UILabel *labelNumbers;
@property(nonatomic, strong)UILabel *labelDescription;
@property(nonatomic, strong)NSMutableArray<UILabel *> *labelsDescriptionArray;


@end

@implementation AOStartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.blackColor;
    
    self.labelsArray = [NSMutableArray arrayWithCapacity:countOfPlaces+1];
    self.labelsDescriptionArray = [NSMutableArray arrayWithCapacity:countOfPlaces+1];
    self.numberOfPlace = [NSArray arrayWithObjects:@"164", @"47", @"176", @"126", @"95", nil];
    self.equityOfPlace = [NSArray arrayWithObjects:@"16184.32", @"9680.35", @"6527.81", @"9944.22", @"5275.64", nil];
    self.imageArray = [NSArray arrayWithObjects:@"1piechart", @"2piechart", @"3piechart", @"4piechart", @"5piechart", nil];

    
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.itemSize = CGSizeMake(275, 275);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    
    self.collectionView.backgroundColor = UIColor.blackColor;

    [self.view addSubview:self.collectionView];
    self.collectionView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.collectionView registerClass:[AOStartViewControllerCollectionViewCell class] forCellWithReuseIdentifier:@"CollectionViewCellIdent"];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    
    [self.collectionView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.collectionView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    [self.collectionView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-22].active = YES;
    [self.collectionView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:22].active = YES;
    
    self.collectionView.alpha = 1;
    [self putInLabelsNumberArray];
    [self putInLabelsDescriptionArray];
}

#pragma mark - UICollectionViewDelegateDataSource
 - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
 {
     return countOfPlaces;
 }
     
 - (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    AOStartViewControllerCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionViewCellIdent forIndexPath:indexPath];
    cell.layer.shadowOpacity = 15.0;
    cell.layer.shadowRadius = 1.7;
    cell.layer.shadowColor = [UIColor greenColor].CGColor;
    cell.layer.shadowOffset = CGSizeMake(2.0, 1.0);
    if (indexPath.item < self.labelsArray.count)
    {
        UILabel *newLabel = self.labelsArray[indexPath.item];
        [UIView transitionWithView:cell.labelNumber
                          duration:1.7f
                           options:UIViewAnimationOptionTransitionCrossDissolve
                        animations:^{
                            [cell.labelNumber setText:newLabel.text];
                        } completion:nil];
        UILabel *descriptionLabel = self.labelsDescriptionArray[indexPath.item];
        [UIView transitionWithView:cell.labelDescription
                          duration:1.7f
                           options:UIViewAnimationOptionTransitionCrossDissolve
                        animations:^{
                            [cell.labelDescription setText:descriptionLabel.text];
                        } completion:nil];
   
        UIImage *image = [UIImage imageNamed:self.imageArray[indexPath.item]];
        [UIView transitionWithView:cell.imageView
                          duration:0.1f
                           options:UIViewAnimationOptionTransitionCrossDissolve
                        animations:^{
                            [cell.imageView setImage:image];
                        } completion:nil];
            
        [cell.spinner stopAnimating];
    } else {
        [cell.spinner startAnimating];
        
    }

    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    AOStartViewControllerCollectionViewCell *cell = (AOStartViewControllerCollectionViewCell *)[self.collectionView cellForItemAtIndexPath:indexPath];
    if (cell.imageView.image != nil)
    {
        MainViewController *mainVC = [MainViewController new];
        AOPictureViewController *pictureVC = [AOPictureViewController new];
        mainVC.imageView = [UIImageView new];
        mainVC.imageView.image = [UIImage imageNamed:self.imageArray[indexPath.item]];
        mainVC.equityLabel = [UILabel new];
        mainVC.equityLabel.text = self.labelsDescriptionArray[indexPath.item].text;
        [self.navigationController pushViewController:pictureVC animated:YES];
    }
}



- (void)putInLabelsNumberArray
{
    while (self.labelsArray.count < countOfPlaces) {
        self.labelNumbers = [UILabel new];
        self.labelNumbers.text = [NSString stringWithFormat:@"WELL_ID %@", self.numberOfPlace[self.labelsArray.count]];
        [self.labelsArray addObject:self.labelNumbers];
    }
}

- (void)putInLabelsDescriptionArray
{
    while (self.labelsDescriptionArray.count < countOfPlaces) {
        self.labelDescription = [UILabel new];
        self.labelDescription.text = [NSString stringWithFormat:@"%@ M", self.equityOfPlace[self.labelsDescriptionArray.count]];
        [self.labelsDescriptionArray addObject:self.labelDescription];
    }
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
