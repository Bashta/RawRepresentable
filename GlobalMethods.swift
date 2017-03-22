//
//  Utils.swift
//  Vyykn
//
//  Created by Bohdan Savych on 3/21/17.
//  Copyright © 2017 Perpetio. All rights reserved.
//

import UIKit

func iterateEnum<T: Hashable>(_: T.Type) -> AnyIterator<T> {
    var i = 0
    return AnyIterator {
        let next = withUnsafeBytes(of: &i) { $0.load(as: T.self) }
        if next.hashValue != i { return nil }
        i += 1
        return next
    }
}
