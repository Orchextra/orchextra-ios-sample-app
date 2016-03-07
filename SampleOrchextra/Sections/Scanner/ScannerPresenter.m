//
//  ScannerPresenter.m
//  SampleOrchextra
//
//  Created by Judith Medina on 6/3/16.
//  Copyright © 2016 Gigigo Mobile Group S.L. All rights reserved.
//

#import "ScannerPresenter.h"
#import "MainWireframe.h"
#import "UserDetailsInteractor.h"

@interface ScannerPresenter ()

@property (nonatomic, strong) MainWireframe *wireframe;
@property (nonatomic, strong) UserDetailsInteractor *userInteractor;
@property (nonatomic, strong) User *userLoaded;

@end

@implementation ScannerPresenter


- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _wireframe = [[MainWireframe alloc] init];
        _userInteractor = [[UserDetailsInteractor alloc] init];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refreshUserDetails:) name:@"RefreshUserDetails" object:nil];
    }
    
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"RefreshUserDetails" object:nil];
}

#pragma mark - PUBLIC 

- (void)viewIsReady
{
    [self handleIfFirstTimeUse];
}

- (void)userDidTapLoginUser
{
    [self.wireframe showUserDetailsViewController:self.viewController];
}

- (void)userDidTapVuforia
{
    
}

- (void)userdidTapScanner
{
    
}

#pragma mark - PRIVATE


- (void)handleIfFirstTimeUse
{
    if (![self.userInteractor isFirstTimeUse])
    {
        [self.viewController displayAnonymousUser];
        [self.userInteractor storeFirstTimeUse:YES];
        [self displayUserInfoScreen];
    }
    else
    {
        [self handleUser];
    }
}

- (void)handleUser
{
    self.userLoaded = [self.userInteractor loadUserCRM];
    
    if (self.userLoaded)
    {
        [self.viewController displayUserLogged:self.userLoaded];
    }
    else
    {
        [self.viewController displayAnonymousUser];
    }
}

- (void)displayUserInfoScreen
{
    [self.wireframe showUserDetailsViewController:self.viewController];
    [self.viewController displayTitleButton:@"Add User"];
}

- (void)refreshUserDetails:(NSNotification *)notification
{
    [self handleUser];
}

@end
