//
//  UIFont+Lato.swift
//  LatoFont
//
//  Created by Michal Konturek on 28/07/2016.
//  Copyright © 2016 Michal Konturek. All rights reserved.
//

import UIKit
import CoreText

class LatoFontFakeClass {
    
}

extension UIFont {

    @nonobjc static var fonts: [String]!
    
    override public class func initialize() {
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
        
        let podBundle = NSBundle(forClass: LatoFontFakeClass.self)
        if let bundleURL = podBundle.URLForResource("LatoFont", withExtension: "bundle") {
            if let bundle = NSBundle(URL: bundleURL) {
                
                for font in fonts {
                    let url = bundle.URLForResource(font, withExtension: "ttf")
                    
                    if (url != nil) {
                        var errorRef: Unmanaged<CFError>?
                        CTFontManagerRegisterFontsForURL(url!, .None, &errorRef)
                    }
                }
            }
        }
    }
    
    public class func latoHairline(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[0], size: size);
    }
    
    public class func latoHairlineItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[1], size: size);
    }
    
    public class func latoLigt(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[2], size: size);
    }
    
    public class func latoLightItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[3], size: size);
    }
    
    public class func lato(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[4], size: size);
    }
    
    public class func latoItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[5], size: size);
    }
    
    public class func latoBold(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[6], size: size);
    }
    
    public class func latoBoldItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[7], size: size);
    }
    
    public class func latoBlack(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[8], size: size);
    }
    
    public class func latoBlackItalic(size: CGFloat) -> UIFont! {
        return UIFont.init(name: fonts[9], size: size);
    }

}
