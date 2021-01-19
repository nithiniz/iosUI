//
//  klama22.swift
//  iOSUI
//
//  Created by Utsav Shrestha on 12/27/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import Foundation

class Klama22 {

    let const1 = "some value"
    let const2 = "another value"

    var variable1 = "mutable variable"
    var variable2 = "another mutable variable"

    func updateVariable(_ value: String) {

        variable1 = value
        print(variable2)
    }

    func newFunction(_ completion:()->()) {

        variable2 = ""
        completion()
    }

    class func aStaticFunc() {

    }
}
