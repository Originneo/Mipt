//
//  AOResultModel.m
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import "AOResultModel.h"

@implementation AOResultModel
-(instancetype)initWithPlace:(NSString *)place;
{
    self = [super init];
    if (self) {
        _place = place;
    }
    return self;
}
@end
