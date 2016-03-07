//
//  AppDelegate.m
//  SampleOrchextra
//
//  Created by Judith Medina on 5/11/15.
//  Copyright © 2015 Judith Medina. All rights reserved.
//

#import "AppDelegate.h"
#import <Orchextra/Orchextra.h>


@interface AppDelegate ()
<OrchextraCustomActionDelegate>

@end

@implementation AppDelegate


#define ORCHEXTRA_API_KEY @"cf35964911b0dbc36990edc57250f5e6d9aed826"
#define ORCHEXTRA_API_SECRET @"a77a2214c54cbbabcb351dc44f3ee0b24efd198f"


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    [[Orchextra sharedInstance] setApiKey:ORCHEXTRA_API_KEY apiSecret:ORCHEXTRA_API_SECRET
                               completion:^(BOOL success, NSError *error) {
                                   
                                   if (success)
                                   {
                                       NSLog(@"ORCHEXTRA has loaded successfully");
                                   }
                                   else {
                                       NSLog(@"ORCHEXTRA Error: %@", error.localizedDescription);
                                   }
                                   
                               }];
    
    [Orchextra logLevel:ORCLogLevelAll];
    [Orchextra saveLogsToAFile];
    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

#pragma mark - NOTIFICATION DELEGATION

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    [ORCPushManager handlePush:notification];
}

- (void)application:(UIApplication *)app didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)devToken
{
    [ORCPushManager storeDeviceToken:devToken];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    [ORCPushManager handlePush:userInfo];
}


#pragma mark - OrchextraCustomActionDelegate

- (void)executeCustomScheme:(NSString *)scheme
{
    NSLog(@"[SampleOrchextra]: Custom scheme - %@", scheme);
}

@end
