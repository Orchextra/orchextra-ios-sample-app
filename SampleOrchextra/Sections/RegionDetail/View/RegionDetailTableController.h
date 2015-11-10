//
//  GeofencesDetailTableViewController.h
//  OrchextraApp
//
//  Created by Judith Medina on 10/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegionDetailPresenter.h"

@interface RegionDetailTableController : UITableViewController
<RegionDetailViewInterface>

@property (strong, nonatomic) RegionDetailPresenter *presenter;

@end
