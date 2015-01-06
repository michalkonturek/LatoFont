//
//  UIFont+Lato.m
//  LatoFont
//
//  Created by Michal Konturek on 29/05/2014.
//  Copyright (c) 2014 Michal Konturek. All rights reserved.
//

#import "UIFont+Lato.h"

#import <CoreText/CoreText.h>

@interface LatoFontFakeClass : NSObject
@end
@implementation LatoFontFakeClass
@end

static NSArray *fonts = nil;

@implementation UIFont (Lato)

+ (void)load {
    fonts = @[@"Lato-Hairline",
              @"Lato-HairlineItalic",
              @"Lato-Light",
              @"Lato-LightItalic",
              @"Lato-Regular",
              @"Lato-Italic",
              @"Lato-Bold",
              @"Lato-BoldItalic",
              @"Lato-Black",
              @"Lato-BlackItalic"
              ];

    NSBundle *bundle = [NSBundle bundleForClass:[LatoFontFakeClass class]];
    NSString *bundlePath = [bundle pathForResource:@"LatoFont" ofType:@"bundle"];
    NSBundle *bundleWithFonts = [NSBundle bundleWithPath:bundlePath];
    
    for (id font in fonts) {
        NSURL *url = [bundleWithFonts URLForResource:font withExtension:@"ttf"];
        CFErrorRef error;
        if (url) {
            CTFontManagerRegisterFontsForURL((__bridge CFURLRef)url, kCTFontManagerScopeNone, &error);
        }
    }
}

+ (UIFont *)latoHairlineFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:0] size:size];
}

+ (UIFont *)latoHairlineItalicFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:1] size:size];
}

+ (UIFont *)latoLightFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:2] size:size];
}

+ (UIFont *)latoLightItalicFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:3] size:size];
}

+ (UIFont *)latoFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:4] size:size];
}

+ (UIFont *)latoItalicFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:5] size:size];
}

+ (UIFont *)latoBoldFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:6] size:size];
}

+ (UIFont *)latoBoldItalicFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:7] size:size];
}

+ (UIFont *)latoBlackFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:8] size:size];
}

+ (UIFont *)latoBlackItalicFontOfSize:(CGFloat)size {
    return [UIFont fontWithName:[fonts objectAtIndex:9] size:size];
}

@end
