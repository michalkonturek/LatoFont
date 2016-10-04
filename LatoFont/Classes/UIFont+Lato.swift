//
//  UIFont+Lato.swift
//  LatoFont
//
//  Created by Michal Konturek on 28/07/2016.
//  Copyright © 2016 Michal Konturek. All rights reserved.
//

import UIKit
import CoreText

/**
 Fake class required for Font bundle loading.
 */
class LatoFontFakeClass {
}

public enum LatoFont: String {
    case hairline = "Lato-Hairline"
    case hairlineItalic = "Lato-HairlineItalic"
    case thin = "Lato-Thin"
    case thinItalic = "Lato-ThinItalic"
    case light = "Lato-Light"
    case lightItalic = "Lato-LightItalic"
    case regular = "Lato-Regular"
    case italic = "Lato-Italic"
    case medium = "Lato-Medium"
    case mediumItalic = "Lato-MediumItalic"
    case semibold = "Lato-Semibold"
    case semiboldItalic = "Lato-SemiboldItalic"
    case bold = "Lato-Bold"
    case boldItalic = "Lato-BoldItalic"
    case black = "Lato-Black"
    case blackItalic = "Lato-BlackItalic"
    case heavy = "Lato-Heavy"
    case heavyItalic = "Lato-HeavyItalic"
}

extension UIFont {

    @nonobjc static var fonts: [String]!

    override open class func initialize() {
        fonts = [
            LatoFont.hairline.rawValue,
            LatoFont.hairlineItalic.rawValue,
            LatoFont.thin.rawValue,
            LatoFont.thinItalic.rawValue,
            LatoFont.light.rawValue,
            LatoFont.lightItalic.rawValue,
            LatoFont.regular.rawValue,
            LatoFont.italic.rawValue,
            LatoFont.medium.rawValue,
            LatoFont.mediumItalic.rawValue,
            LatoFont.semibold.rawValue,
            LatoFont.semiboldItalic.rawValue,
            LatoFont.bold.rawValue,
            LatoFont.boldItalic.rawValue,
            LatoFont.black.rawValue,
            LatoFont.blackItalic.rawValue,
            LatoFont.heavy.rawValue,
            LatoFont.heavyItalic.rawValue
        ]
        
        let podBundle = Bundle(for: LatoFontFakeClass.self)
        if let bundleURL = podBundle.url(forResource: "LatoFont", withExtension: "bundle") {
            if let bundle = Bundle(url: bundleURL) {
                
                for font in fonts {
                    let url = bundle.url(forResource: font, withExtension: "ttf")
                    
                    if (url != nil) {
                        var errorRef: Unmanaged<CFError>?
                        CTFontManagerRegisterFontsForURL(url! as CFURL, .none, &errorRef)
                    }
                }
            }
        }
    }

    /**
     Returns `Lato` font with style defined by `style`.

     - parameter size: size of the font
     */
    public class func lato(_ style: LatoFont, size: CGFloat = 17.0) -> UIFont! {
        return UIFont.init(name: style.rawValue, size: size)
    }

    /**
     Returns `Lato` font with `hairline` style.
     
     - parameter size: size of the font
     */
    public class func latoHairline(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.hairline, size: size)
    }
    
    /**
     Returns `Lato` font with `hairline italic` style.
     
     - parameter size: size of the font
     */
    public class func latoHairlineItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.hairlineItalic, size: size)
    }

    /**
     Returns `Lato` font with `thin` style.

     - parameter size: size of the font
     */
    public class func latoThin(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.thin, size: size)
    }

    /**
     Returns `Lato` font with `thin italic` style.

     - parameter size: size of the font
     */
    public class func latoThinItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.thinItalic, size: size)
    }

    /**
     Returns `Lato` font with `light` style.
     
     - parameter size: size of the font
     */
    public class func latoLight(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.light, size: size)
    }
    
    /**
     Returns `Lato` font with `light italic` style.
     
     - parameter size: size of the font
     */
    public class func latoLightItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.lightItalic, size: size)
    }
    
    /**
     Returns `Lato` font with `lato` style.
     
     - parameter size: size of the font
     */
    public class func lato(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.regular, size: size)
    }
    
    /**
     Returns `Lato` font with `italic` style.
     
     - parameter size: size of the font
     */
    public class func latoItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.italic, size: size)
    }

    /**
     Returns `Lato` font with `medium` style.

     - parameter size: size of the font
     */
    public class func latoMedium(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.medium, size: size)
    }

    /**
     Returns `Lato` font with `medium italic` style.

     - parameter size: size of the font
     */
    public class func latoMediumItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.mediumItalic, size: size)
    }

    /**
     Returns `Lato` font with `semibold` style.

     - parameter size: size of the font
     */
    public class func latoSemibold(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.semibold, size: size)
    }

    /**
     Returns `Lato` font with `semibold italic` style.

     - parameter size: size of the font
     */
    public class func latoSemiboldItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.semiboldItalic, size: size)
    }

    /**
     Returns `Lato` font with `bold` style.
     
     - parameter size: size of the font
     */
    public class func latoBold(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.bold, size: size)
    }
    
    /**
     Returns `Lato` font with `bold italic` style.
     
     - parameter size: size of the font
     */
    public class func latoBoldItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.boldItalic, size: size)
    }
    
    /**
     Returns `Lato` font with `black` style.
     
     - parameter size: size of the font
     */
    public class func latoBlack(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.black, size: size)
    }
    
    /**
     Returns `Lato` font with `black italic` style.
     
     - parameter size: size of the font
     */
    public class func latoBlackItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.blackItalic, size: size)
    }

    /**
     Returns `Lato` font with `heavy` style.

     - parameter size: size of the font
     */
    public class func latoHeavy(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.heavy, size: size)
    }

    /**
     Returns `Lato` font with `heavy italic` style.

     - parameter size: size of the font
     */
    public class func latoHeavyItalic(size: CGFloat = 17.0) -> UIFont! {
        return UIFont.lato(.heavyItalic, size: size)
    }
}
