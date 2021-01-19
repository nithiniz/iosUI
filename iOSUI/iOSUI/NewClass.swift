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

        print("1")
        newFunction( completion: {
            print("2")
            // do something after completing the process in new Function method
            //self.process().testSiri()

            let abc = self.someValue().toString()
            print(abc)

            let app = self.process()
            app.testSiri()
        })

        Klama22.aStaticFunc()

        let klama22Object = Klama22()
        klama22Object.variable2 = "january"

        let klama22Object2 = Klama22()
        klama22Object2.variable2 = "February"

        klama22Object.updateVariable("")
    }

    func someValue() -> Int {

        return 10
    }

    func process() -> Program {

        print("3")
        let program = Program("anusha")

        // do something

        return program
    }
}

extension NewClass {
    //lines: 14 -> 15 -> 16 ->  17 -> 38 -> 39 -> 40 -> 41 -> 42 -> 18 -> 19 -> 20 -> 25 -> 26 -> 27 --- 31 -> 20 -> Program class - comes back -> 21 -> 43
    func newFunction(completion:()->()) {

        // do something
        print("4")
        completion() // after the process call the passed function paramenter.
        print("5")
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

