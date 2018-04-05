//
//  ArrayExtension.swift
//  TMSwiftUtilitiesPackageDescription
//
//  Created by 417.72KI on 2018/04/05.
//

import Foundation

extension Array where Element: Hashable {
    
    func unique() -> [Element] {
        var r = [Element]()
        for i in self {
            r += !r.contains(i) ? [i] : []
        }
        return r
    }
}
