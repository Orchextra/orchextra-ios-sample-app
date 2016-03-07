//
//  Wireframe.m
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "MainWireframe.h"
#import "RegionDetailTableController.h"
#import "RegionDetailPresenter.h"
#import "UserDetailsViewController.h"
#import "UserDetailsPresenter.h"

NSInteger const HEIGHT_USER_INFO = 275;

@interface MainWireframe ()

@end

@implementation MainWireframe

-(void)showRegionDetailTableControllerOnViewController:(UIViewController *)viewController values:(NSArray *)values
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    RegionDetailTableController *regionDetailTableController = [storyboard instantiateViewControllerWithIdentifier:@"RegionDetailTableController"];
   
    regionDetailTableController.presenter = [[RegionDetailPresenter alloc] initWithViewController:regionDetailTableController];
    [regionDetailTableController.presenter displayWithValues:values];
    
    [viewController.navigationController pushViewController:regionDetailTableController animated:YES];
}

- (void)showUserDetailsViewController:(UIViewController *)viewController
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UserDetailsViewController *userDetailsViewController = [storyboard instantiateViewControllerWithIdentifier:@"UserDetailsViewController"];

    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;

    [userDetailsViewController.view setFrame:CGRectMake(0, -height, width, height)];
    
    [viewController addChildViewController:userDetailsViewController];
    [viewController.view addSubview:userDetailsViewController.view];
    
    [UIView animateWithDuration:1.0
                          delay:0.0
         usingSpringWithDamping:0.8
          initialSpringVelocity:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         [userDetailsViewController.view setFrame:CGRectMake(0, 64, width, height)];
    } completion:^(BOOL finished) {
        
    }];
}


- (void)hideUserDetailsViewController:(UIViewController *)userDetailsViewController
{
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;

    [UIView animateWithDuration:0.8
                          delay:0.0
         usingSpringWithDamping:0.8
          initialSpringVelocity:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         [userDetailsViewController.view setFrame:CGRectMake(0, -height, width, height)];
                         
                     } completion:^(BOOL finished) {
                         [userDetailsViewController.view removeFromSuperview];

                     }];
}

@end
