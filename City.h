//
//  City.h
//  Assessment2
//
//  Created by Thomas M. Mroz on 5/22/14.
//  Copyright (c) 2014 BGHS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject
@property NSString *city;
@property NSString *state;
-(City *) initWithCity: (NSString *) City state: (NSString*) state;

@end
