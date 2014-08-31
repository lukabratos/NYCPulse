//
//  LBLBNYCPulse.h
//  NYCPulse
//
//  Created by Luka Bratoš on 30/08/2014.
//  Copyright (c) 2014 Luka Bratoš. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"

@interface LBNYCPulse : AFHTTPRequestOperationManager

- (void)retrieveStations:(void (^)(NSArray *stations))success failure:(void (^)(NSError *error))failure;
- (void)realTimeDataForStationId:(NSUInteger)station success:(void (^)(NSArray *trains))success failure:(void (^)(NSError *error))failure;
- (void)timetableDataForStationId:(NSUInteger)station success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
