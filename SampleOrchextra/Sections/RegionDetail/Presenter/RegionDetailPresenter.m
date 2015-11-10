//
//  RegionDetailPresenter.m
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "RegionDetailPresenter.h"
#import "DetailModel.h"

@interface RegionDetailPresenter ()

@property (weak, nonatomic) UIViewController<RegionDetailViewInterface> *viewController;

@end

@implementation RegionDetailPresenter

- (instancetype)initWithViewController:(UIViewController<RegionDetailViewInterface> *)viewController
{
    self = [super init];
    
    if (self)
    {
        _viewController = viewController;
    }
    
    return self;
}

#pragma mark - PUBLIC

- (void)viewIsReady
{
    [self.viewController showCellWithDataSource:[self prepareDataSource]];
}

- (void)displayWithValues:(NSArray *)values
{
    self.values = values;
}

#pragma mark - PRIVATE

- (NSArray *)prepareDataSource
{
    NSMutableArray *datasource = [[NSMutableArray alloc] init];
    
    for (DetailModel *detail in self.values) {
        
        if ([detail.title isEqualToString:@"NotifyOnEntry"] ||
            [detail.title isEqualToString:@"NotifyOnExit"] )
        {
            if([detail.value isEqualToString:@"1"])
            {
                [datasource addObject:detail];
            }
        }
        else
        {
            [datasource addObject:detail];
        }
    }
    
    return datasource;
}

@end
