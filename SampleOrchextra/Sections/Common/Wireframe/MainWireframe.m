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

@implementation MainWireframe

-(void)showRegionDetailTableControllerOnViewController:(UIViewController *)viewController values:(NSArray *)values
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    RegionDetailTableController *regionDetailTableController = [storyboard instantiateViewControllerWithIdentifier:@"RegionDetailTableController"];
   
    regionDetailTableController.presenter = [[RegionDetailPresenter alloc] initWithViewController:regionDetailTableController];
    [regionDetailTableController.presenter displayWithValues:values];
    
    [viewController.navigationController pushViewController:regionDetailTableController animated:YES];
}


@end
