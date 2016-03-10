//
//  UserDetailsViewController.h
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserDetailsPresenter.h"
#import "ScannerViewController.h"

@interface UserDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UILabel *birthdayLabel;
@property (weak, nonatomic) IBOutlet UIView *pickerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSegmentedControl;
@property (weak, nonatomic) IBOutlet UIButton *addUserButton;

@end
