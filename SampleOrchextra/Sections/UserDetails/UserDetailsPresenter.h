//
//  UserDetailsPresenter.h
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "UserDetailsViewController.h"

@protocol PUserDetailsViewController <NSObject>

- (void)displayAnonymousUser;
- (void)displayUserLogged:(User *)user;

@end

@interface UserDetailsPresenter : NSObject

@property (nonatomic, strong) UIViewController<PUserDetailsViewController> *viewController;

- (void)viewIsReady;

- (void)userDidTapToLoginWithUser:(User *)user;
- (void)userDidTapBirthdayButton;
- (void)userDidCancelEditUser;

@end
