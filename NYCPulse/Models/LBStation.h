//
//  LBStation.h
//  NYCPulse
//
//  Created by Luka Bratoš on 31/08/2014.
//  Copyright (c) 2014 Luka Bratoš. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface LBStation : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic, readonly) NSString *name;
@property (copy, nonatomic, readonly) NSNumber *stopId;
@property (copy, nonatomic, readonly) NSString *latitude;
@property (copy, nonatomic, readonly) NSString *longitude;

@end
