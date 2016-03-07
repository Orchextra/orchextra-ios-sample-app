//
//  UserDetailsPresenter.m
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import "UserDetailsPresenter.h"
#import "UserDetailsInteractor.h"
#import "MainWireframe.h"

@interface UserDetailsPresenter ()

@property (nonatomic, strong) UserDetailsInteractor *interactor;
@property (nonatomic, strong) MainWireframe *wireframe;
@property (nonatomic, strong) User *user;

@end

@implementation UserDetailsPresenter

#pragma mark - INIT

- (instancetype)init
{
    UserDetailsInteractor *interactor = [[UserDetailsInteractor alloc] init];
    return [self initWithInteractor:interactor];
}

- (instancetype)initWithInteractor:(UserDetailsInteractor *)interactor
{
    self = [super init];
    
    if (self)
    {
        _interactor = interactor;
        _wireframe = [[MainWireframe alloc] init];
    }
    
    return self;
}


#pragma mark - PUBLIC

- (void)viewIsReady
{
   self.user = [self.interactor loadUserCRM];
    
    if (self.user)
    {
        [self.viewController displayUserLogged:self.user];
    }
    else
    {
        [self.viewController displayAnonymousUser];
    }
    
}

- (void)userDidTapToLoginWithUser:(User *)user
{
    [self.interactor storeUserCRM:user];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RefreshUserDetails" object:nil];
    [self.wireframe hideUserDetailsViewController:self.viewController];
}

- (void)userDidTapBirthdayButton
{
    
}

- (void)userDidCancelEditUser
{
    [self.wireframe hideUserDetailsViewController:self.viewController];
}

#pragma mark - PRIVATE



@end
