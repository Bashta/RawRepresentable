//
//  ViewController.swift
//  EnumIterateable
//
//  Created by sssbohdan@gmail.com on 03/29/2017.
//  Copyright (c) 2017 sssbohdan@gmail.com. All rights reserved.
//

import UIKit
import EnumIterateable

fileprivate enum WorldSide: String {
    case north,
    east,
    west,
    south
    
    var opposite: WorldSide {
        switch self {
        case .north:
            return .south
            
        case .south:
            return .north
        
        case .east:
            return .west
            
        case .west:
            return .east
        }
    }
}

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rawValues = WorldSide.getRawValues()
        let cases = WorldSide.getCases()
        let count = WorldSide.count
        
        print("\(cases)")
        print("\(rawValues)")
        print("\(count)")
    }
}

