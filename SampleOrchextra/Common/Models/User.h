//
//  User.h
//  SampleOrchextra
//
//  Created by Judith Medina on 4/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSDate *birthday;

@property (nonatomic, strong) NSString *birthdayViewModel;

@end
