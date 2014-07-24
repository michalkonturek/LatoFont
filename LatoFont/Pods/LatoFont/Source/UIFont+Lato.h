//
//  UIFont+Lato.h
//  LatoFont
//
//  Created by Michal Konturek on 29/05/2014.
//  Copyright (c) 2014 Michal Konturek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (Lato)

+ (UIFont *)latoHairlineFontOfSize:(CGFloat)size;
+ (UIFont *)latoHairlineItalicFontOfSize:(CGFloat)size;

+ (UIFont *)latoLightFontOfSize:(CGFloat)size;
+ (UIFont *)latoLightItalicFontOfSize:(CGFloat)size;

+ (UIFont *)latoFontOfSize:(CGFloat)size;
+ (UIFont *)latoItalicFontOfSize:(CGFloat)size;

+ (UIFont *)latoBoldFontOfSize:(CGFloat)size;
+ (UIFont *)latoBoldItalicFontOfSize:(CGFloat)size;

+ (UIFont *)latoBlackFontOfSize:(CGFloat)size;
+ (UIFont *)latoBlackItalicFontOfSize:(CGFloat)size;

@end
