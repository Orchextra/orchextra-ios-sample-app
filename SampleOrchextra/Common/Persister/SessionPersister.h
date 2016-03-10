//
//  SessionPersister.h
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface SessionPersister : NSObject

- (instancetype)initWithNSUserDefauls:(NSUserDefaults *)userDefaults;

- (void)storeUser:(User *)user;
- (User *)loadUser;

- (void)storeFirstAccess:(BOOL)firstAccess;
- (BOOL)loadSession;

@end
