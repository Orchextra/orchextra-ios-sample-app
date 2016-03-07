//
//  ScannerViewController.h
//  OrchextraApp
//
//  Created by Judith Medina on 9/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScannerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *openScanButton;
@property (weak, nonatomic) IBOutlet UIButton *vuforiaButton;

@property (weak, nonatomic) IBOutlet UILabel *userIdentifierLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthdayLabel;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end
