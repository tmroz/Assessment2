//
//  City.m
//  Assessment2
//
//  Created by Thomas M. Mroz on 5/22/14.
//  Copyright (c) 2014 BGHS. All rights reserved.
//

#import "City.h"

@implementation City

- (City *)initWithCity: (NSString *)city state: (NSString*)state
{
    self.city = city;
    self.state = state;
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@: %@", self.city, self.state];
}

@end
