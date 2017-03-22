//
//  RawRepresentable.swift
//  Vyykn
//
//  Created by Bohdan Savych on 3/21/17.
//  Copyright © 2017 Perpetio. All rights reserved.
//

import Foundation

typealias EnumParsable = RawRepresentable & Hashable

extension RawRepresentable where Self: Hashable {
    static func getCaseArray() -> [Self] {
        return iterateEnum(Self.self).map{$0}
    }
    
    static var count: Int {
        return Self.getCaseArray().count
    }
    
    static func getRawValueArray() -> [RawValue] {
        let arr = self.getCaseArray()
        let rawValues = arr.flatMap {
            $0.rawValue
        }
        
        return rawValues
    }
}
