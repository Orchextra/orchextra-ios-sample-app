//
//  RegionDetailPresenter.h
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RegionDetailViewInterface <NSObject>

- (void)showCellWithDataSource:(NSArray *)datasource;

@end

@interface RegionDetailPresenter : NSObject

@property (strong, nonatomic) NSArray *values;

- (instancetype)initWithViewController:(UIViewController<RegionDetailViewInterface> *)viewController;

- (void)viewIsReady;
- (void)displayWithValues:(NSArray *)values;

@end
