//
//  DetailModel.h
//  OrchextraApp
//
//  Created by Judith Medina on 13/7/15.
//  Copyright (c) 2015 Gigigo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DetailModel : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *value;

- (instancetype)initWithTitle:(NSString *)title value:(NSString *)value;

@end
