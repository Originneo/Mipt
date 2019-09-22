//
//  AOResultModel.h
//  MIPTHackOil
//
//  Created by Антон Огурцов on 21/09/2019.
//  Copyright © 2019 Антон Огурцов. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AOResultModel : NSObject

@property(nonatomic, copy) NSString *nameOfEarth;
@property(nonatomic, copy) NSString *place;
@property(nonatomic, assign) NSUInteger probability;
@property(nonatomic, assign) NSUInteger depth;

-(instancetype)initWithPlace:(NSString*) place;
@end

NS_ASSUME_NONNULL_END
