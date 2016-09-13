//
//  UserDetailsInteractor.m
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import "UserDetailsInteractor.h"
#import "SessionPersister.h"
#import <Orchextra/Orchextra.h>

@interface UserDetailsInteractor ()

@property (nonatomic, strong) SessionPersister *sessionPersister;

@end

@implementation UserDetailsInteractor

#pragma mark - INIT

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        _sessionPersister = [[SessionPersister alloc] init];
    }
    
    return self;
}


#pragma mark - PUBLIC

- (BOOL)isFirstTimeUse
{
    return [self.sessionPersister loadSession];
}

- (User *)loadUserCRM
{
    return [self.sessionPersister loadUser];
}

- (void)storeUserCRM:(User *)user
{
    [self.sessionPersister storeUser:user];
    [self updateUserWithOrchextraServer:user];
}

- (void)storeFirstTimeUse:(BOOL)used
{
    [self.sessionPersister storeFirstAccess:used];
}

#pragma mark - PRIVATE

- (void)updateUserWithOrchextraServer:(User *)user
{
    /* Get current Orchextra user */
    Orchextra *orchextra = [Orchextra sharedInstance];
    ORCUser *userOrchextra = [orchextra currentUser];
    userOrchextra.crmID = user.email;
    userOrchextra.birthday = user.birthday;
    if ([user.gender isEqualToString:@"female"]) {
        userOrchextra.gender = ORCGenderFemale;
    }
    else {
        userOrchextra.gender = ORCGenderMale;
    }
    
    /* Save Orchextra user */
    [orchextra bindUser:userOrchextra];
}

@end
