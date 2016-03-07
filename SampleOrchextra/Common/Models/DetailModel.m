//
//  DetailModel.m
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "DetailModel.h"

@implementation DetailModel

- (instancetype)initWithTitle:(NSString *)title value:(NSString *)value
{
    self = [super init];
    if (self)
    {
        _title = title;
        _value = value;
    }
    
    return self;
}

@end
