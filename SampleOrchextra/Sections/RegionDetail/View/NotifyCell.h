//
//  NotifyCellTableViewCell.h
//  OrchextraApp
//
//  Created by Judith Medina on 4/8/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailModel;

@interface NotifyCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)bindDataWithDetail:(DetailModel *)detail;

@end
