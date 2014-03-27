//
//  PHScheduleModel.h
//  Philladelphia_iPhone
//
//  Created by Igor Bogatchuk on 3/27/14.
//  Copyright (c) 2014 Igor Bogatchuk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PHStation.h"

@interface PHScheduleModel : NSObject

@property (nonatomic, strong) PHStation* fromStation;
@property (nonatomic, strong) PHStation* toStation;
@property (nonatomic, assign) NSUInteger* dayOfWeek;
@property (nonatomic, assign) NSTimeInterval* time;

@end
