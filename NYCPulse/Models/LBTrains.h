//
//  LBTrains.h
//  NYCPulse
//
//  Created by Luka Bratoš on 31/08/2014.
//  Copyright (c) 2014 Luka Bratoš. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface LBTrains : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSNumber *direction;
@property (copy, nonatomic, readonly) NSNumber *scheduledTrack;
@property (copy, nonatomic, readonly) NSString *arrivalTime;
@property (copy, nonatomic, readonly) NSNumber *actualTrack;
@property (copy, nonatomic, readonly) NSString *trainId;
@property (copy, nonatomic, readonly) NSNumber *line;
@property (copy, nonatomic, readonly) NSString *tripId;
@property (copy, nonatomic, readonly) NSString *startDate;
@property (copy, nonatomic, readonly) NSString *departureTime;

@end
