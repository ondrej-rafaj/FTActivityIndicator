//
//  FTActivityIndicatorStyleBoldCircleArrow.m
//  FTActivityIndicator
//
//  Created by Ondrej Rafaj on 02/11/2012.
//  Copyright (c) 2012 Fuerte International. All rights reserved.
//

#import "FTActivityIndicatorStyleBoldCircleArrow.h"

@implementation FTActivityIndicatorStyleBoldCircleArrow

+ (FTActivityIndicatorStyle *)instance {
    FTActivityIndicatorStyleBoldCircleArrow *instance = [[FTActivityIndicatorStyleBoldCircleArrow alloc] init];
    return instance;
}

- (NSDictionary *)getStyle {
    return nil;
}

- (void)drawActivityIndicator {
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(8.34, 8.34)];
    [bezier2Path addCurveToPoint: CGPointMake(8.34, 19.66) controlPoint1: CGPointMake(5.22, 11.47) controlPoint2: CGPointMake(5.22, 16.53)];
    [bezier2Path addLineToPoint: CGPointMake(14.13, 16.37)];
    [bezier2Path addLineToPoint: CGPointMake(19.72, 19.59)];
    [bezier2Path addCurveToPoint: CGPointMake(19.66, 8.34) controlPoint1: CGPointMake(22.78, 16.46) controlPoint2: CGPointMake(22.76, 11.45)];
    [bezier2Path addCurveToPoint: CGPointMake(8.34, 8.34) controlPoint1: CGPointMake(16.53, 5.22) controlPoint2: CGPointMake(11.47, 5.22)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(23.28, 4.19)];
    [bezier2Path addCurveToPoint: CGPointMake(23.28, 23.28) controlPoint1: CGPointMake(28.56, 9.46) controlPoint2: CGPointMake(28.56, 18.01)];
    [bezier2Path addCurveToPoint: CGPointMake(4.19, 23.28) controlPoint1: CGPointMake(18.01, 28.56) controlPoint2: CGPointMake(9.46, 28.56)];
    [bezier2Path addCurveToPoint: CGPointMake(4.19, 4.19) controlPoint1: CGPointMake(-1.08, 18.01) controlPoint2: CGPointMake(-1.08, 9.46)];
    [bezier2Path addCurveToPoint: CGPointMake(23.28, 4.19) controlPoint1: CGPointMake(9.46, -1.08) controlPoint2: CGPointMake(18.01, -1.08)];
    [bezier2Path closePath];
    [[UIColor lightGrayColor] setFill];
    [bezier2Path fill];
    [[UIColor clearColor] setStroke];
    bezier2Path.lineWidth = 1;
    [bezier2Path stroke];
}


@end
