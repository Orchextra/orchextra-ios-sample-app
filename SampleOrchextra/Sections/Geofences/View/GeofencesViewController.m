//
//  HomeViewController.m
//  OrchextraApp
//
//  Created by Judith Medina on 6/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <Orchextra/Orchextra.h>
#import "GeofencesViewController.h"
#import "RegionAnnotation.h"
#import "GeofencesPresenter.h"


@interface GeofencesViewController ()
<MKMapViewDelegate, GeofenceViewInterface>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) GeofencesPresenter *presenter;

@end

@implementation GeofencesViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        self.presenter = [[GeofencesPresenter alloc] initWithViewInterface:self];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mapView.delegate = self;
    self.mapView.userTrackingMode = YES;
    
    [self setAppearanceView];
    [self.presenter viewIsReady];

}

#pragma mark - PRIVATE

- (void)setAppearanceView
{
    self.title = @"Geofences";
}

- (void)paintRadiusCircleToCLRegion:(CLCircularRegion *)region
{
    MKCircle *circle = [MKCircle circleWithCenterCoordinate:region.center radius:region.radius];
    [self.mapView addOverlay:circle];
}

#pragma mark - PRIVATE (Interface)

- (void)showGeofencesOnMap:(NSArray *)geofences
{
    for (CLCircularRegion *region in geofences)
    {
        RegionAnnotation *annotation = [[RegionAnnotation alloc] initWithTitle:region.identifier
                                                                      location:region.center];
        [self.mapView addAnnotation:annotation];
        [self paintRadiusCircleToCLRegion:region];
    }
}


#pragma mark - DELEGATE (CoreLocation) 


#pragma mark - DELEGATE (Map)

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]])
    {
        return nil;
    }
    else if ([annotation isKindOfClass:[RegionAnnotation class]])
    {
        static NSString * const identifier = @"RegionAnnotation";
        
        MKAnnotationView* annotationView =  [(RegionAnnotation *)annotation annotationView];
    
        if (annotationView)
        {
            annotationView.annotation = annotation;
        }
        else
        {
            annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation
                                                          reuseIdentifier:identifier];
        }
        annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        return annotationView;
    }

    return nil;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    [self.presenter userDidTapRegionSelected];
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    RegionAnnotation *annotation = view.annotation;
    [self.presenter userDidChooseRegionWithIdentifier:annotation.title];
}

- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay
{
    if ([overlay isKindOfClass:[MKCircle class]])
    {
        MKCircleRenderer *circleRenderer = [[MKCircleRenderer alloc] initWithOverlay:overlay];
        circleRenderer.strokeColor = [UIColor blueColor];
        circleRenderer.fillColor = [UIColor colorWithRed:0 green:0 blue:255.0/255.0 alpha:0.1];
        circleRenderer.lineWidth = 1;
        
        return circleRenderer;
    }
    
    return nil;
}

@end
