//
//  AOPictureViewController.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 22/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "AOPictureViewController.h"

@interface AOPictureViewController ()
@property(nonatomic, strong)UIImageView* imageView;
@end

@implementation AOPictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width+15, self.view.frame.size.height)];
    self.imageView.image = [UIImage imageNamed:@"picture"];
    [self.view addSubview:self.imageView];
    self.imageView 
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
