//
//  ScannerViewController.m
//  OrchextraApp
//
//  Created by Judith Medina on 9/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "ScannerViewController.h"
#import <Orchextra/Orchextra.h>
#import <VuforiaOrchextra/VuforiaOrchextra.h>
#import "ScannerPresenter.h"


@interface ScannerViewController ()
<PScannerViewController>

@property (nonatomic, strong) ScannerPresenter *presenter;

@end

@implementation ScannerViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        _presenter = [[ScannerPresenter alloc] init];
        _presenter.viewController = self;
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Scanner";
    self.openScanButton.layer.cornerRadius = 2.0;
    
    [self.presenter viewIsReady];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.vuforiaButton.hidden = ![[VuforiaOrchextra sharedInstance] isVuforiaEnable];
}

- (IBAction)openScannerTapped:(id)sender
{
    [[Orchextra sharedInstance] startScanner];
}

- (IBAction)openVuforiaTapped:(id)sender
{
    [[VuforiaOrchextra sharedInstance] startImageRecognition];
}

- (IBAction)openUserCRMInformation:(id)sender
{
    [self.presenter userDidTapLoginUser];
}

#pragma mark - INTERFACE

- (void)displayAnonymousUser
{
    self.userIdentifierLabel.text = @"Anonymous";
    self.genderLabel.text = @"";
    self.birthdayLabel.text = @"";
    
    [self.loginButton setTitle:@"Login" forState:UIControlStateNormal];
}

- (void)displayUserLogged:(User *)user
{
    self.userIdentifierLabel.text = user.email;
    self.genderLabel.text = user.gender;
    self.birthdayLabel.text = user.birthdayViewModel;
    
    [self.loginButton setTitle:@"Change User" forState:UIControlStateNormal];
}

- (void)displayTitleButton:(NSString *)titleButton
{
    [self.loginButton setTitle:titleButton forState:UIControlStateNormal];
}


@end
