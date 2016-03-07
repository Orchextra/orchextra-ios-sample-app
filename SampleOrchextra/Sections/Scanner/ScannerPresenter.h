//
//  ScannerPresenter.h
//  SampleOrchextra
//
//  Created by Judith Medina on 6/3/16.
//  Copyright © 2016 Gigigo Mobile Group S.L. All rights reserved.
//

#import <UIKit/UIkit.h>
#import "User.h"

@protocol PScannerViewController <NSObject>

- (void)displayAnonymousUser;
- (void)displayUserLogged:(User *)user;
- (void)displayTitleButton:(NSString *)titleButton;

@end

@interface ScannerPresenter : NSObject

@property (nonatomic, strong) UIViewController<PScannerViewController> *viewController;

- (void)viewIsReady;

- (void)userDidTapLoginUser;
- (void)userDidTapVuforia;
- (void)userdidTapScanner;

@end
