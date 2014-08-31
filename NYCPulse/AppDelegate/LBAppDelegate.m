//
//  LBAppDelegate.m
//  NYCPulse
//
//  Created by Luka Bratoš on 31/08/2014.
//  Copyright (c) 2014 Luka Bratoš. All rights reserved.
//

#import "LBNYCPulse.h"
#import "LBAppDelegate.h"

@implementation LBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    LBNYCPulse *nycPulse = [[LBNYCPulse alloc] init];

    [nycPulse retrieveStations:^(NSArray *stations) {
        NSLog(@"%@", [stations firstObject]);
    } failure:^(NSError *error) {
        NSLog(@"%@", error);
    }];

    [nycPulse realTimeDataForStationId:120 success:^(NSArray *trains) {
        NSLog(@"%@", [trains firstObject]);
    } failure:^(NSError *error) {
        NSLog(@"%@", error);
    }];

    //    [nycPulse timetableDataForStationId:120 success:^(id responseObject) {
    //        NSLog(@"%@", responseObject);
    //    } failure:^(NSError *error) {
    //        NSLog(@"%@", error);
    //    }];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
