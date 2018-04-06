//
//  StringExtension.swift
//  TMSwiftUtilitiesPackageDescription
//
//  Created by 417.72KI on 2018/04/05.
//

import Foundation

public extension String {

    /// returns `NSString.lastPathComponent` directly
    public var lastPathComponent: String {
        return (self as NSString).lastPathComponent
    }
    
    /// returns `NSString.pathExtension` directly
    public var pathExtension: String {
        return (self as NSString).pathExtension
    }
}

public extension String{
    
    /// その文字列がメールアドレスかどうか調べる
    public func isEmailFormat() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: self)
        return result
    }
    
    /// 半角英数と.のみ許可する
    public func isUserCodeFormat() -> Bool {
        let userCodeRegEx = "[A-Z0-9a-z.]+"
        let userCodeTest = NSPredicate(format:"SELF MATCHES %@", userCodeRegEx)
        let result = userCodeTest.evaluate(with: self)
        return result
    }
    
}
