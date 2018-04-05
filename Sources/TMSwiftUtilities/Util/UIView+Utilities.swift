//
//  UIView+Utilities.swift
//  TMSwiftUtilitiesPackageDescription
//
//  Created by 417.72KI on 2018/04/05.
//

import UIKit

extension UIView {
    
    static func view<T: UIView>() -> T {
        guard let view = Bundle.main.loadNibNamed(NSStringFromClass(self), owner: nil, options: nil)?.first as? T else {
            abort()
        }
        return view
    }
    
    func resizeForAspectFit(width: CGFloat = CGFloat.greatestFiniteMagnitude, height: CGFloat = CGFloat.greatestFiniteMagnitude) {
        resizeForAspectFit(size: CGSize(width: width, height: height))
    }
    
    func resizeForAspectFit(size: CGSize) {
        let widthRatio = size.width / self.frame.width
        let heightRatio = size.height / self.frame.height
        let ratio = (widthRatio < heightRatio) ? widthRatio : heightRatio
        if ratio == CGFloat.infinity {
            return
        }
        let resizedSize = CGSize(width: self.frame.size.width * ratio, height: self.frame.size.height * ratio)
        self.frame.size = resizedSize
    }
    
    func toImage() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }

}
