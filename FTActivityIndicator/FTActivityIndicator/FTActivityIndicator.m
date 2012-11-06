//
//  FTActivityIndicator.m
//  FTActivityIndicator
//
//  Created by Ondrej Rafaj on 02/11/2012.
//  Copyright (c) 2012 Fuerte International. All rights reserved.
//

#import "FTActivityIndicator.h"


@interface FTActivityIndicator ()

//@property (nonatomic) BOOL hide

@end


@implementation FTActivityIndicator

@synthesize isAnimating = _isAnimating;
@synthesize hidesWhenStopped = _hidesWhenStopped;
@synthesize activityIndicatorViewStyle = _activityIndicatorViewStyle;


#pragma mark Initialization

- (id)initWithActivityIndicatorStyle:(FTActivityIndicatorStyle *)style {
    
}

- (id)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

#pragma mark Animations

- (void)startAnimating {
    
}

- (void)stopAnimating {
    
}

#pragma Settings

- (BOOL)hidesWhenStopped {
    return _hidesWhenStopped;
}

- (void)setHidesWhenStopped:(BOOL)hides {
    
}

#pragma mark Processes

- (void)showActivityIndicatorWhilePerforming:(SEL)selector onTarget:(id)target {
    
}

- (void)showActivityIndicatorWhilePerformingBackgroundProcess:(SEL)selector onTarget:(id)target {
    
}


@end
