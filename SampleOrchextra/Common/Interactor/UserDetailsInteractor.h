//
//  UserDetailsInteractor.h
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface UserDetailsInteractor : NSObject

- (BOOL)isFirstTimeUse;
- (User *)loadUserCRM;

- (void)storeUserCRM:(User *)user;
- (void)storeFirstTimeUse:(BOOL)used;

@end
