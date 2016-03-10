//
//  UserDetailsViewController.m
//  SampleOrchextra
//
//  Created by Judith Medina on 5/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import "UserDetailsViewController.h"

@interface UserDetailsViewController ()
<PUserDetailsViewController, UIPickerViewDelegate, UITextFieldDelegate>

@property (nonatomic, strong) User *userDisplayed;
@property (nonatomic, strong) UserDetailsPresenter *presenter;


@end

@implementation UserDetailsViewController


#pragma mark - INIT

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        _presenter = [[UserDetailsPresenter alloc] init];
        _presenter.viewController = self;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initialize];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(birthdayTapped:)];
    tapGesture.numberOfTapsRequired = 1;
    [self.birthdayLabel addGestureRecognizer:tapGesture];
    self.birthdayLabel.userInteractionEnabled = YES;
    
    [self.presenter viewIsReady];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - INTERFACE

- (void)displayAnonymousUser
{
    self.userDisplayed = [[User alloc] init];
    [self.addUserButton setTitle:@"Add User" forState:UIControlStateNormal];
}

- (void)displayUserLogged:(User *)user
{
    self.userDisplayed = user;
    
    self.emailTextField.text = user.email;
    self.birthdayLabel.text = user.birthdayViewModel;
    self.genderSegmentedControl.selectedSegmentIndex = [self genderBasedOnString:user.gender];
    [self.addUserButton setTitle:@"Change User" forState:UIControlStateNormal];
}

#pragma mark - PUBLIC

- (IBAction)addUserButtonTapped:(id)sender
{
    [self prepareUserToStore];
    [self.presenter userDidTapToLoginWithUser:self.userDisplayed];
}

- (IBAction)cancelTapped:(id)sender
{
    [self.presenter userDidCancelEditUser];
}

- (IBAction)donePickerTapped:(id)sender
{
    self.userDisplayed.birthday = self.datePicker.date;
    [self hidePickerDate];
}

#pragma mark - PRIVATE

- (void)initialize
{
    self.emailTextField.layer.borderWidth = 1;
    self.emailTextField.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.emailTextField.layer.cornerRadius = 2;
    
    UIView *paddingTxtfieldView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 30)];
    self.emailTextField.leftView = paddingTxtfieldView;
    self.emailTextField.leftViewMode = UITextFieldViewModeAlways;
    
    [self.pickerView setHidden:YES];
    [self hidePickerDate];
    
}

- (void)birthdayTapped:(UIGestureRecognizer *)gesture
{
    [self showPickerDate];
}

- (IBAction)changedDatePickerValue:(id)sender
{
    NSString *date = [self stringFromDate:self.datePicker.date];
    self.birthdayLabel.text = date;
}

- (void)hidePickerDate
{
    self.bottomConstraint.constant = -300;
    
    [UIView animateWithDuration:1.0 delay:0.0
         usingSpringWithDamping:0.7
          initialSpringVelocity:0.0
                        options:UIViewAnimationOptionCurveEaseInOut animations:^{
                            [self.view layoutIfNeeded];
                        } completion:^(BOOL finished) {
                            [self.pickerView setHidden:YES];
                        }];
}

- (void)showPickerDate
{
    [self.emailTextField resignFirstResponder];

    self.bottomConstraint.constant = 64;
    [self.pickerView setHidden:NO];
    
    if (self.userDisplayed.birthday) {
        self.datePicker.date = self.userDisplayed.birthday;
    }

    [UIView animateWithDuration:1.0 delay:0.0
         usingSpringWithDamping:0.7
          initialSpringVelocity:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         [self.view layoutIfNeeded];
                     } completion:^(BOOL finished) {
                     }];
}

- (void)prepareUserToStore
{
    self.userDisplayed.email = self.emailTextField.text;
    
    if (self.genderSegmentedControl.selectedSegmentIndex == 0)
    {
        self.userDisplayed.gender = @"female";
    }
    else
    {
        self.userDisplayed.gender = @"male";
    }
    
    self.userDisplayed.birthdayViewModel = self.birthdayLabel.text;

}


#pragma mark - UIDatePicker

- (NSDate *)dateFromString:(NSString *)dateStr
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}

- (NSString *)stringFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    return [dateFormat stringFromDate:date];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

- (NSInteger)genderBasedOnString:(NSString *)genderString
{
    if ([genderString isEqualToString:@"female"]) {
        return 0;
    }
    else
    {
        return 1;
    }
}

@end
