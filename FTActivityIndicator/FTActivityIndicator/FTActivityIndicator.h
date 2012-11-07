//
//  FTActivityIndicator.h
//  FTActivityIndicator
//
//  Created by Ondrej Rafaj on 02/11/2012.
//  Copyright (c) 2012 Fuerte International. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "FTActivityIndicatorStyleBoldCircleArrow.h"


@class FTActivityIndicatorStyle;

@interface FTActivityIndicator : UIView


@property (nonatomic, readonly) BOOL isAnimating;
@property (nonatomic) BOOL hidesWhenStopped;
@property (nonatomic, strong) FTActivityIndicatorStyle *activityIndicatorViewStyle;


- (id)initWithActivityIndicatorStyle:(FTActivityIndicatorStyle *)style;

- (void)startAnimating;
- (void)stopAnimating;

- (void)showActivityIndicatorWhilePerforming:(SEL)selector onTarget:(id)target;
- (void)showActivityIndicatorWhilePerformingBackgroundProcess:(SEL)selector onTarget:(id)target;


@end
