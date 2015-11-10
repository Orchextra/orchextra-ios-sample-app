//
//  RegionAnnotation.m
//  OrchextraApp
//
//  Created by Judith Medina on 6/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "RegionAnnotation.h"

@implementation RegionAnnotation

- (instancetype)initWithTitle:(NSString *)title location:(CLLocationCoordinate2D)location
{
    self = [super init];
    if (self)
    {
        _title = title;
        _coordinate = location;
    }
    
    return self;
}

- (MKAnnotationView *)annotationView
{
    MKAnnotationView *annotationView = [[MKAnnotationView alloc] initWithAnnotation:self reuseIdentifier:@"RegionAnnotation"];
    annotationView.enabled = YES;
    annotationView.canShowCallout = YES;
    annotationView.image = [UIImage imageNamed:@"geofence-blue.png"];
    
    return annotationView;
}

@end
