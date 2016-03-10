//
//  User.m
//  SampleOrchextra
//
//  Created by Judith Medina on 4/3/16.
//  Copyright © 2016 Judith Medina. All rights reserved.
//

#import "User.h"

NSString * const ORCUserEmail   = @"ORCUserEmail";
NSString * const ORCUserGender  = @"ORCUserGender";
NSString * const ORCBirthday    = @"ORCBirthday";

@implementation User

#pragma mark - CODING

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    if (self)
    {
        _email = [aDecoder decodeObjectForKey:ORCUserEmail];
        _gender = [aDecoder decodeObjectForKey:ORCUserGender];
        _birthday = [aDecoder decodeObjectForKey:ORCBirthday];
        _birthdayViewModel = [self stringFromDate:_birthday];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_email forKey:ORCUserEmail];
    [aCoder encodeObject:_gender forKey:ORCUserGender];
    [aCoder encodeObject:_birthday forKey:ORCBirthday];
}

- (NSString *)stringFromDate:(NSDate *)date
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    return [dateFormat stringFromDate:date];
}


@end
