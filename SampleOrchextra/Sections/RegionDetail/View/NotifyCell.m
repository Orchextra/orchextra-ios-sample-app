//
//  NotifyCellTableViewCell.m
//  OrchextraApp
//
//  Created by Judith Medina on 4/8/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import "NotifyCell.h"
#import "DetailModel.h"


@implementation NotifyCell

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.separatorInset = UIEdgeInsetsMake(0, CGRectGetWidth(self.bounds)/2.0, 0, CGRectGetWidth(self.bounds)/2.0);
}

- (void)bindDataWithDetail:(DetailModel *)detail
{
    if ([detail.title isEqualToString:@"NotifyOnEntry"])
    {
        self.titleLabel.text = @"Notification on entry";
    }
    
    if ([detail.title isEqualToString:@"NotifyOnExit"])
    {
        self.titleLabel.text = @"Notification on exit";
    }
}



@end
