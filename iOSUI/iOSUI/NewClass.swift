//
//  NewClass.swift
//  iOSUI
//
//  Created by Utsav Shrestha on 11/15/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import Foundation
class NewClass {
    var applicationOne: String?
    
    func appTest(){
        newFunction {

            // do something after completing the process in new Function method
            self.process().testSiri()
        }
    }

    func process() -> Program {

        let program = Program("")

        // do something

        return program
    }

}

extension NewClass {

    func newFunction(_ completion:()->()) {

        // do something

        completion() // after the process call the passed function paramenter.
    }
}

extension String {

    func splitBy(_ splitChar: String) -> [String] {

        return self.components(separatedBy: splitChar)
    }
}

extension Int {

    func toString() -> String {

        return "\(self)"
    }
}

