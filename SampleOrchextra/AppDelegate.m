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

#define ORCHEXTRA_API_KEY @"eb58d2654fa8db064c777da03bfe34d0ade89582"
#define ORCHEXTRA_API_SECRET @"63717acaa17a0ad3abeb0f581e2d9f198b6ec558"

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

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    [[Orchextra sharedInstance] fetchNewDataWithCompletionHandler:completionHandler];
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
