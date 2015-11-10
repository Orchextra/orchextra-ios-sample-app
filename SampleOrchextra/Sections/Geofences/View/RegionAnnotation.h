//
//  RegionAnnotation.h
//  OrchextraApp
//
//  Created by Judith Medina on 6/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface RegionAnnotation : NSObject <MKAnnotation>

@property (readonly, nonatomic) CLLocationCoordinate2D coordinate;
@property (copy, nonatomic) NSString *title;

- (instancetype)initWithTitle:(NSString *)title location:(CLLocationCoordinate2D)location;
- (MKAnnotationView *)annotationView;

@end
