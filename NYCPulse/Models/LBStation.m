//
//  LBStation.m
//  NYCPulse
//
//  Created by Luka Bratoš on 31/08/2014.
//  Copyright (c) 2014 Luka Bratoš. All rights reserved.
//

#import "LBStation.h"

@implementation LBStation

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             NSStringFromSelector(@selector(name)): @"name",
             NSStringFromSelector(@selector(stopId)): @"stop_id",
             NSStringFromSelector(@selector(latitude)): @"lat",
             NSStringFromSelector(@selector(longitude)): @"lng",
             };
}

@end
