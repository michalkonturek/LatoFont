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

extension UIFont {

    @nonobjc static var fonts: [String]!
    
    override open class func initialize() {
        fonts = [
            "Lato-Hairline",
            "Lato-HairlineItalic",
            "Lato-Light",
            "Lato-LightItalic",
            "Lato-Regular",
            "Lato-Italic",
            "Lato-Bold",
            "Lato-BoldItalic",
            "Lato-Black",
            "Lato-BlackItalic"
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
     Returns `Lato` font with `hairline` style.
     
     - parameter size: size of the font
     */
    public class func latoHairline(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[0], size: size);
    }
    
    /**
     Returns `Lato` font with `hairline italic` style.
     
     - parameter size: size of the font
     */
    public class func latoHairlineItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[1], size: size);
    }
    
    /**
     Returns `Lato` font with `light` style.
     
     - parameter size: size of the font
     */
    public class func latoLight(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[2], size: size);
    }
    
    /**
     Returns `Lato` font with `light italic` style.
     
     - parameter size: size of the font
     */
    public class func latoLightItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[3], size: size);
    }
    
    /**
     Returns `Lato` font with `lato` style.
     
     - parameter size: size of the font
     */
    public class func lato(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[4], size: size);
    }
    
    /**
     Returns `Lato` font with `italic` style.
     
     - parameter size: size of the font
     */
    public class func latoItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[5], size: size);
    }
    
    /**
     Returns `Lato` font with `bold` style.
     
     - parameter size: size of the font
     */
    public class func latoBold(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[6], size: size);
    }
    
    /**
     Returns `Lato` font with `bold italic` style.
     
     - parameter size: size of the font
     */
    public class func latoBoldItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[7], size: size);
    }
    
    /**
     Returns `Lato` font with `black` style.
     
     - parameter size: size of the font
     */
    public class func latoBlack(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[8], size: size);
    }
    
    /**
     Returns `Lato` font with `black italic` style.
     
     - parameter size: size of the font
     */
    public class func latoBlackItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[9], size: size);
    }

}
