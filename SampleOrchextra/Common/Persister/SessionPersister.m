//
//  SessionPersister.m
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import "SessionPersister.h"

#import "NSUserDefaults+ORCGIGArchive.h"

NSString * const USER_CRM = @"user_crm";
NSString * const FIRST_TIME = @"firstTime";

@interface SessionPersister ()

@property (nonatomic, strong) NSUserDefaults *userDefaults;

@end

@implementation SessionPersister

- (instancetype)init
{
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] init];
    
    return [self initWithNSUserDefauls:userDefaults];
}

- (instancetype)initWithNSUserDefauls:(NSUserDefaults *)userDefaults
{
    self = [super init];
    
    if (self)
    {
        _userDefaults = userDefaults;
    }
    
    return self;
}

#pragma mark - PUBLICS

- (void)storeUser:(User *)user
{
    [self.userDefaults archiveObject:user forKey:USER_CRM];
    [self.userDefaults synchronize];
}

- (User *)loadUser
{
    return [self.userDefaults unarchiveObjectForKey:USER_CRM];
}

- (void)storeFirstAccess:(BOOL)firstAccess
{
    [self.userDefaults setBool:firstAccess forKey:FIRST_TIME];
    [self.userDefaults synchronize];
}

- (BOOL)loadSession
{
    return [self.userDefaults boolForKey:FIRST_TIME];
}

@end
