//
//  Honeydew.m
//  Honeydew
//
//  Created by sudeep on 01/05/15.
//  Copyright (c) 2015 Sudeep Jaiswal. All rights reserved.
//

@import UIKit;
#import "Honeydew.h"

@implementation Honeydew

+ (instancetype)sharedInstance {
    static Honeydew *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)setUpLocalNotification {
    static UILocalNotification *notification = nil;
    if (!notification) {
        notification = [[UILocalNotification alloc] init];
        notification.fireDate = [[NSDate date] dateByAddingTimeInterval:2.0];
        notification.alertBody = @"Phone side mein rakh ke padhai kar, nahin to aage ja ke bheekh maangega.";
        notification.repeatInterval = NSCalendarUnitSecond;
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    }
}

@end
