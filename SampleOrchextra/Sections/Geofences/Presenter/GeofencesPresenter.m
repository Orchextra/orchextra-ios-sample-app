//
//  RegionPresenter.m
//  OrchextraApp
//
//  Created by Judith Medina on 10/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <Orchextra/ORCData.h>
#import <CoreLocation/CoreLocation.h>
#import "MainWireframe.h"
#import "GeofencesPresenter.h"
#import "DetailModel.h"


@interface GeofencesPresenter ()

@property (weak, nonatomic) UIViewController<GeofenceViewInterface> *viewController;
@property (strong, nonatomic) MainWireframe *wireframe;
@property (strong, nonatomic) ORCData *datasource;
@property (strong, nonatomic) NSArray *geofences;
@property (strong, nonatomic) NSString *identifierSelected;

@end


@implementation GeofencesPresenter

- (instancetype)initWithViewInterface:(UIViewController<GeofenceViewInterface> *)viewController

{
    self = [super init];
    
    if (self)
    {
        _wireframe = [[MainWireframe alloc] init];
        _datasource = [[ORCData alloc] init];
        _viewController = viewController;
    }
    
    return self;
}

#pragma mark - PUBLIC

- (void)viewIsReady
{
    self.geofences = [self.datasource loadGeofencesRegistered];
    [self.viewController showGeofencesOnMap:self.geofences];
}

- (void)userDidTapRegionSelected
{
    CLCircularRegion *geofenceFound = [self geofenceWithIdentifier:self.identifierSelected];
    NSArray *detailsValue = [self detailsValueWithGeofence:geofenceFound];
    
    [self.wireframe showRegionDetailTableControllerOnViewController:self.viewController values:detailsValue];
}

- (void)userDidChooseRegionWithIdentifier:(NSString *)identifier
{
    self.identifierSelected = identifier;
}

#pragma mark - PRIVATE

- (CLCircularRegion *)geofenceWithIdentifier:(NSString *)identifier
{
    CLCircularRegion *geofenceFound = nil;
    
    for (CLCircularRegion *geofence in self.geofences)
    {
        if ([geofence.identifier isEqualToString:identifier])
        {
            geofenceFound = geofence;
            break;
        }
    }
    
    return geofenceFound;
}

- (NSArray *)detailsValueWithGeofence:(CLCircularRegion *)geofence
{
    NSMutableArray *values = [[NSMutableArray alloc] init];
    [values addObject:[[DetailModel alloc] initWithTitle:@"Identifier" value:geofence.identifier]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"Longitude" value:[NSString stringWithFormat:@"%@", @(geofence.center.longitude)]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"Latitude" value:[NSString stringWithFormat:@"%@", @(geofence.center.latitude)]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"Radius" value:[NSString stringWithFormat:@"%@", @(geofence.radius)]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"NotifyOnEntry" value:[NSString stringWithFormat:@"%@", @(geofence.notifyOnEntry)]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"NotifyOnExit" value:[NSString stringWithFormat:@"%@", @(geofence.notifyOnExit)]]];

    return values;
}

@end
