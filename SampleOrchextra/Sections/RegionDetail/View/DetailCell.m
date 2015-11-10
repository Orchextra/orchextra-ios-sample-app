//
//  DetailCell.m
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "DetailCell.h"
#import "DetailModel.h"


@implementation DetailCell

- (void)layoutSubviews
{
    [super layoutSubviews];
}

- (void)bindDataWithDetail:(DetailModel *)detail
{
    self.titleLabel.text = detail.title;
    self.valueLabel.text = detail.value;
    
}


@end
