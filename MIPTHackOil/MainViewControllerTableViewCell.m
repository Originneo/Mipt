//
//  MainViewControllerTableViewCell.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "MainViewControllerTableViewCell.h"

@interface MainViewControllerTableViewCell()

@property(nonatomic, readwrite)UILabel *earthName;
@property(nonatomic, readwrite)UILabel *depthOfSearching;
@property(nonatomic, readwrite)UILabel *probability;

@end

@implementation MainViewControllerTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        _earthName = [[UILabel alloc]init];
        _depthOfSearching = [[UILabel alloc]init];
        _probability = [[UILabel alloc]init];
        
    }
    return self;
}

- (void)prepareForReuse
{
    self.earthName.text = nil;
    self.depthOfSearching.text = nil;
    self.probability.text = nil;
    [super prepareForReuse];
}

-(void) makeConstraints
{
    _earthName.translatesAutoresizingMaskIntoConstraints = NO;
    _depthOfSearching.translatesAutoresizingMaskIntoConstraints = NO;
    _probability.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    self.selectionStyle = UITableViewCellSelectionStyleBlue;
    [super setSelected:selected animated:animated];
}

@end
