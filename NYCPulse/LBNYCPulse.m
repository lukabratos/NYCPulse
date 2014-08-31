//
//  LBLBNYCPulse.m
//  NYCPulse
//
//  Created by Luka Bratoš on 30/08/2014.
//  Copyright (c) 2014 Luka Bratoš. All rights reserved.
//

#import "LBTrains.h"
#import "LBStation.h"
#import "LBNYCPulse.h"

@implementation LBNYCPulse

static NSString * const kNYCPulseStationsURL = @"http://nycitypulse.com/stations";
static NSString * const kNYCPulseRealtimeURL = @"http://nycitypulse.com/realtime/";
static NSString * const kNYCPulseTimetableURL = @"http://nycitypulse.com/timetable/";
static NSString * const kNYCPulseAPIKey = @"";
#pragma message "Assign your NYC Pulse API key to kNYCPulseAPIKey."

- (void)retrieveStations:(void (^)(NSArray *stations))success failure:(void (^)(NSError *))failure
{
    NSDictionary *parameters = @{@"key": kNYCPulseAPIKey};
    [self GET:kNYCPulseStationsURL parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            NSError *error;
            NSArray *stations = [MTLJSONAdapter modelsOfClass:LBStation.class fromJSONArray:responseObject[@"result"] error:&error];
            if(!error) {
                success(stations);
            } else {
                failure(error);
            }
        }

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", [error localizedDescription]);
        if (failure) {
            failure(error);
        }
    }];
}

- (void)realTimeDataForStationId:(NSUInteger)station success:(void (^)(NSArray *trains))success failure:(void (^)(NSError *))failure
{
    NSDictionary *parameters = @{@"key": kNYCPulseAPIKey};
    NSString *url = [NSString stringWithFormat:@"%@%d", kNYCPulseRealtimeURL, station];
    [self GET:url parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            NSError *error;
            NSArray *trains = [MTLJSONAdapter modelsOfClass:LBTrains.class fromJSONArray:responseObject[@"result"][@"trains"] error:&error];
            if(!error) {
                success(trains);
            } else {
                failure(error);
            }
        }

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

- (void)timetableDataForStationId:(NSUInteger)station success:(void (^)(id responseObject))success failure:(void (^)(NSError *))failure
{
    NSDictionary *parameters = @{@"key": kNYCPulseAPIKey};
    NSString *url = [NSString stringWithFormat:@"%@%d", kNYCPulseTimetableURL, station];
    [self GET:url parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (success) {
            success(responseObject);
        }

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", [error localizedDescription]);
        if (failure) {
            failure(error);
        }
    }];
}

@end
