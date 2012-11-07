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
@property (nonatomic, readonly) FTActivityIndicatorStyle *activityIndicatorViewStyle;


- (id)initWithActivityIndicatorStyle:(FTActivityIndicatorStyle *)style;

- (void)setRotationDuration:(NSTimeInterval)time;
- (void)setRevertedRotation:(BOOL)revertedRotation;

- (void)startAnimating;
- (void)stopAnimating;
- (void)reloadAnimation;

- (void)showActivityIndicatorWhilePerforming:(SEL)selector onTarget:(id)target;
- (void)showActivityIndicatorWhilePerformingBackgroundProcess:(SEL)selector onTarget:(id)target;


@end
