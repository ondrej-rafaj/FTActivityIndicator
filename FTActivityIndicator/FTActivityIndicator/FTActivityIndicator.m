//
//  FTActivityIndicator.m
//  FTActivityIndicator
//
//  Created by Ondrej Rafaj on 02/11/2012.
//  Copyright (c) 2012 Fuerte International. All rights reserved.
//

#import "FTActivityIndicator.h"
#import <QuartzCore/QuartzCore.h>


@interface FTActivityIndicator ()

@property (nonatomic, strong) FTActivityIndicatorStyleDetails *styleDetails;
@property (nonatomic) BOOL doesHideWhenStopped;

@end


@implementation FTActivityIndicator


#pragma mark Initialization

- (void)doSetup {
    _doesHideWhenStopped = NO;
    [self setBackgroundColor:[UIColor clearColor]];
}

- (id)initWithActivityIndicatorStyle:(FTActivityIndicatorStyle *)style {
    self = [super initWithFrame:CGRectMake(0, 0, 28, 28)];
    if (self) {
        _activityIndicatorViewStyle = style;
        _styleDetails = [_activityIndicatorViewStyle getStyleDetails];
        [self doSetup];
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        [self doSetup];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self doSetup];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self doSetup];
    }
    return self;
}

#pragma mark Animations

- (void)startAnimating {
    [self setHidden:NO];
    CABasicAnimation *rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat:((M_PI * 2.0) * (_styleDetails.revertedRotation ? -1.0 : 1.0))];
    rotationAnimation.duration = _styleDetails.rotationDuration;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 5;
    [self.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
    _isAnimating = YES;
}

- (void)stopAnimating {
    [self.layer removeAllAnimations];
    _isAnimating = NO;
    if ([self hidesWhenStopped]) {
        [self setHidden:YES];
    }
}

- (void)reloadAnimation {
    [self stopAnimating];
    [self startAnimating];
}

#pragma Settings

- (BOOL)hidesWhenStopped {
    return _doesHideWhenStopped;
}

- (void)setHidesWhenStopped:(BOOL)hides {
    _doesHideWhenStopped = hides;
    if (_doesHideWhenStopped && !_isAnimating) {
        [self setHidden:YES];
    }
}

- (void)setRotationDuration:(NSTimeInterval)time {
    _styleDetails.rotationDuration = time;
    if (_isAnimating) {
        [self reloadAnimation];
    }
}

- (void)setRevertedRotation:(BOOL)revertedRotation {
    _styleDetails.revertedRotation = revertedRotation;
    if (_isAnimating) {
        [self reloadAnimation];
    }
}

#pragma mark Processes

- (void)showActivityIndicatorWhilePerforming:(SEL)selector onTarget:(id)target {
    
}

- (void)showActivityIndicatorWhilePerformingBackgroundProcess:(SEL)selector onTarget:(id)target {
    
}

#pragma mark drawRect

- (void)drawRect:(CGRect)rect {
    [_activityIndicatorViewStyle drawActivityIndicator];
}


@end
