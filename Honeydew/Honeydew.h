//
//  Honeydew.h
//  Honeydew
//
//  Created by sudeep on 01/05/15.
//  Copyright (c) 2015 Sudeep Jaiswal. All rights reserved.
//

@import Foundation;

@interface HoneydewNotification : NSObject

+ (instancetype)sharedInstance;
- (void)setUpLocalNotification;

@end
