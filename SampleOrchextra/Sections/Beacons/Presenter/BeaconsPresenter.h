//
//  BeaconsPresenter.h
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@protocol BeaconViewInterface <NSObject>

- (void)showBeacons:(NSArray *)beacons;

@end

@interface BeaconsPresenter : NSObject

- (instancetype)initWithViewController:(UIViewController<BeaconViewInterface> *)viewController;
- (void)viewIsReady;

- (void)userDidSelectAllBeacons;
- (void)userDidSelectEntryBeacons;
- (void)userDidSelectExitBeacons;
- (void)userDidSelectBeacon:(CLBeaconRegion *)beacon;

@end
