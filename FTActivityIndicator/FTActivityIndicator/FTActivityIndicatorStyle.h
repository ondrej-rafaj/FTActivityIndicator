//
//  FTActivityIndicatorStyle.h
//  FTActivityIndicator
//
//  Created by Ondrej Rafaj on 02/11/2012.
//  Copyright (c) 2012 Fuerte International. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTActivityIndicatorStyle : NSObject

+ (FTActivityIndicatorStyle *)instance;

- (void)configure;
- (NSDictionary *)getStyle;

- (void)drawActivityIndicator;


@end
