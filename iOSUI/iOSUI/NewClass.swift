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
        
       newFunction {
        //print("4")
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
        let program = Program("")

        // do something

        return program
    }
}

extension NewClass {

    func newFunction(_  completion:()->()) {
        print(2.toString())
        // do something
        print("4")
        completion() // after the process call the passed function paramenter.
        print(5.toString())
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
    
    func greaterThanTen() -> Bool {
        return self > 10
    }
}

