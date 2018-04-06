//
//  UIColorExtension.swift
//  TMSwiftUtilitiesPackageDescription
//
//  Created by 417.72KI on 2018/04/05.
//

import UIKit

public extension UIColor {
    
    /// Initializes and returns a color object using red, green, blue and alpha values.
    ///
    /// - Parameters:
    ///   - r: red(0-255)
    ///   - g: green(0-255)
    ///   - b: blue(0-255)
    ///   - a: alpha
    public convenience init(r: Int, g: Int, b: Int, a: CGFloat) {
        self.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: a)
    }
    
    /// Initializes and returns a color object using color code
    ///
    /// - Parameters:
    ///   - decimal: hex color code
    ///   - alpha: alpha
    public convenience init(decimal: Int, alpha: CGFloat = 1.0) {
        self.init(r: ((decimal & 0xFF0000) >> 16), g: ((decimal & 0x00FF00) >> 8), b: ((decimal & 0x0000FF) >> 0), a: alpha)
    }
    
    public class func rgb(r: Int, g: Int, b: Int, a: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha:a)
    }
}
