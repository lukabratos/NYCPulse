//
//  LBTrains.m
//  NYCPulse
//
//  Created by Luka Bratoš on 31/08/2014.
//  Copyright (c) 2014 Luka Bratoš. All rights reserved.
//

#import "LBTrains.h"

@implementation LBTrains

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             NSStringFromSelector(@selector(direction)): @"direction",
             NSStringFromSelector(@selector(scheduledTrack)): @"scheduled_track",
             NSStringFromSelector(@selector(arrivalTime)): @"arrival_time",
             NSStringFromSelector(@selector(actualTrack)): @"actual_track",
             NSStringFromSelector(@selector(trainId)): @"train_id",
             NSStringFromSelector(@selector(line)): @"line",
             NSStringFromSelector(@selector(tripId)): @"trip_id",
             NSStringFromSelector(@selector(startDate)): @"start_date",
             NSStringFromSelector(@selector(departureTime)): @"departure_time"
             };
}

@end
