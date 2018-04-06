//
//  ArrayExtension.swift
//  TMSwiftUtilitiesPackageDescription
//
//  Created by 417.72KI on 2018/04/05.
//

import Foundation

public extension Array where Element: Hashable {
    
    public func unique() -> [Element] {
        var r = [Element]()
        for i in self {
            r += !r.contains(i) ? [i] : []
        }
        return r
    }
}
