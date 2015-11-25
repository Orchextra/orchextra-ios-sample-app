//
//  BeaconsPresenter.m
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <Orchextra/Orchextra.h>

#import "BeaconsPresenter.h"
#import "MainWireframe.h"
#import "DetailModel.h"

@interface BeaconsPresenter()

@property (strong, nonatomic) UIViewController<BeaconViewInterface> *viewController;
@property (strong, nonatomic) MainWireframe *wireframe;
@property (strong, nonatomic) ORCData *datasource;
@property (strong, nonatomic) NSArray *beacons;

@end


@implementation BeaconsPresenter

- (instancetype)initWithViewController:(UIViewController<BeaconViewInterface> *)viewController
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
    self.beacons = [self.datasource fetchBeaconsRegistered];
    [self.viewController showBeacons:self.beacons];
}

- (void)userDidSelectBeacon:(CLBeaconRegion *)beacon;
{
    NSArray *detailsValues = [self detailsValueWithBeacon:beacon];
    [self.wireframe showRegionDetailTableControllerOnViewController:self.viewController values:detailsValues];
}

- (void)userDidSelectAllBeacons
{
    [self.viewController showBeacons:self.beacons];
}

- (void)userDidSelectEntryBeacons
{
    NSPredicate *filterEntryBeacons = [NSPredicate predicateWithFormat:@"self.notifyOnEntry == TRUE"];
    NSArray *entryBeacons = [self.beacons filteredArrayUsingPredicate:filterEntryBeacons];
    [self.viewController showBeacons:entryBeacons];
}

- (void)userDidSelectExitBeacons
{
    NSPredicate *filterEntryBeacons = [NSPredicate predicateWithFormat:@"self.notifyOnExit == TRUE"];
    NSArray *exitBeacons = [self.beacons filteredArrayUsingPredicate:filterEntryBeacons];
    [self.viewController showBeacons:exitBeacons];
}

#pragma mark - PRIVATE

- (NSArray *)detailsValueWithBeacon:(CLBeaconRegion *)beacon
{
    NSMutableArray *values = [[NSMutableArray alloc] init];
    [values addObject:[[DetailModel alloc] initWithTitle:@"Identifier" value:beacon.identifier]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"UUID" value:[beacon.proximityUUID UUIDString]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"Major" value:[NSString stringWithFormat:@"%@", beacon.major]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"Minor" value:[NSString stringWithFormat:@"%@", beacon.minor]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"NotifyOnEntry" value:[NSString stringWithFormat:@"%@", @(beacon.notifyOnEntry)]]];
    [values addObject:[[DetailModel alloc] initWithTitle:@"NotifyOnExit" value:[NSString stringWithFormat:@"%@", @(beacon.notifyOnExit)]]];
    
    return values;
}

@end
