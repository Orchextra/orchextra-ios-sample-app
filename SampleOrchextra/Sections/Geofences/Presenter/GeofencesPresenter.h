//
//  RegionPresenter.h
//  OrchextraApp
//
//  Created by Judith Medina on 10/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol GeofenceViewInterface <NSObject>

- (void)showGeofencesOnMap:(NSArray *)geofences;

@end


@interface GeofencesPresenter : NSObject

- (instancetype)initWithViewInterface:(UIViewController<GeofenceViewInterface> *)viewInterface;
- (void)viewIsReady;
- (void)userDidChooseRegionWithIdentifier:(NSString *)identifier;
- (void)userDidTapRegionSelected;

@end
