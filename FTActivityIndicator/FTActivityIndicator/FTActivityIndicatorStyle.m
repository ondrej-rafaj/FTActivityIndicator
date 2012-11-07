//
//  FTActivityIndicatorStyle.m
//  FTActivityIndicator
//
//  Created by Ondrej Rafaj on 02/11/2012.
//  Copyright (c) 2012 Fuerte International. All rights reserved.
//

#import "FTActivityIndicatorStyle.h"

@implementation FTActivityIndicatorStyle

+ (FTActivityIndicatorStyle *)instance {
    return nil;
}

- (void)configure {
    
}

- (FTActivityIndicatorStyleDetails *)getStyleDetails {
    return [FTActivityIndicatorStyleDetails instance];
}

- (void)drawActivityIndicator {
    
}


@end


@implementation FTActivityIndicatorStyleDetails

+ (id)instance {
    FTActivityIndicatorStyleDetails *instance = [[FTActivityIndicatorStyleDetails alloc] init];
    [instance setSize:CGSizeMake(28, 28)];
    [instance setRotationDuration:2.3];
    [instance setRevertedRotation:NO];
    return instance;
}

@end