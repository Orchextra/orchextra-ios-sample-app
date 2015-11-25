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


#define ORCHEXTRA_API_KEY @"YOUR_API_KEY"
#define ORCHEXTRA_API_SECRET @"YOUR_API_SECRET"


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    [[Orchextra sharedInstance] setApiKey:ORCHEXTRA_API_KEY apiSecret:ORCHEXTRA_API_SECRET
                               completion:^(BOOL success, NSError *error) {
                                   
                                   if (success)
                                   {
                                       NSLog(@"ORCHEXTRA has loaded successfully");
                                   }
                                   else {
                                       NSLog(@"ORCHEXTRA ERROR: %@", error.localizedDescription);
                                   }
                                   
                               }];
    
    [[Orchextra sharedInstance] debug:true];
    
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
