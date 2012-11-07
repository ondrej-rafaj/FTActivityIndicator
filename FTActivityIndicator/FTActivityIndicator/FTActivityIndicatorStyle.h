//
//  FTActivityIndicatorStyle.h
//  FTActivityIndicator
//
//  Created by Ondrej Rafaj on 02/11/2012.
//  Copyright (c) 2012 Fuerte International. All rights reserved.
//

#import <Foundation/Foundation.h>


@class FTActivityIndicatorStyleDetails;


@interface FTActivityIndicatorStyle : NSObject

+ (FTActivityIndicatorStyle *)instance;

- (void)configure;
- (FTActivityIndicatorStyleDetails *)getStyleDetails;

- (void)drawActivityIndicator;


@end


@interface FTActivityIndicatorStyleDetails : NSObject

+ (id)instance;

@property (nonatomic) NSTimeInterval rotationDuration;
@property (nonatomic) CGSize size;
@property (nonatomic) BOOL revertedRotation;

@end