//
//  NSDate+ARAdditions.m
//  ARToolbox
//
//  Created by Alejandro Rodríguez on 1/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSDate+ARAdditions.h"


@implementation NSDate (ARAdditions)

+ (NSDate *)AR_firstInstantOfCurrentYear {
	NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSYearCalendarUnit fromDate:[NSDate date]];
	return [[NSCalendar currentCalendar] dateFromComponents:dateComponents];
}

+ (NSDate *)AR_firstInstantOfNextYear {
	NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSYearCalendarUnit fromDate:[NSDate date]];
	[dateComponents setYear:[dateComponents year] + 1];
	return [[NSCalendar currentCalendar] dateFromComponents:dateComponents];
}

@end
