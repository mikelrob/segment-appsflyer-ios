//
//  SEGAppsFlyerIntegrationFactory.h
//  AppsFlyerSegmentiOS
//
//  Created by Margot Guetta/Maxim Shoustin on 5/17/16.
//  Copyright © 2016 AppsFlyer. All rights reserved.
//

#import <Foundation/Foundation.h>

#if SWIFT_PACKAGE
#import "Segment.h"
#else

#if defined(__has_include) && __has_include(<Analytics/SEGIntegrationFactory.h>)
#import <Analytics/SEGIntegrationFactory.h>
#else
#import <Segment/SEGIntegrationFactory.h>
#endif

#endif

#import "SEGAppsFlyerIntegration.h"

@interface SEGAppsFlyerIntegrationFactory : NSObject <SEGIntegrationFactory>

+ (instancetype)instance;
+ (instancetype)createWithLaunchDelegate:(id<SEGAppsFlyerLibDelegate>) delegate;

@property (weak, nonatomic) id<SEGAppsFlyerLibDelegate> delegate;

@end
