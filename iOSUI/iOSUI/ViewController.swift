//
//  ViewController.swift
//  iOSUI
//
//  Created by Nithin Nizam on 08/11/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // optional - can hold a nil value

        let prg = Program("")
        prg.calculate()
        prg.anotherString = "some value"


        var newVariable: Int? = 5
        newVariable = 10

        //optional unwrapping

        // 1: forced - will be avoided mostly
        // 2: assigning - if let name = optional -> used mostly
        // 3: conditional


        var unw = 0
        if let abc = newVariable {
            unw = abc
        }

        guard let _ = newVariable else {

            return
        }


        let unwrapped = newVariable ?? 0
        let newone: String = "something"
        let boolean: Bool = true //false
        let intArray: [Int] = [1,2,3]
        let stringArray: [String] = ["one", "two"]
        let array: [Any] = [1, "String", 3, 4, true]
        // String
        // Int
        // Bool
//        Array
        let dictionary: [String: String] = ["one": "value of one", "two": "value of two"]
        let newDictionary: [String: Any] = ["string": newone, "int": newVariable, "bool": boolean, "array": array, "dictionary": dictionary]

        print(dictionary["one"])

        newFunction()

        newFunction(someString: "abc")
        someFunction("abc")

        let caps = capitalize("abc") //ABC

        //placeholder
    }

    func newFunction() {


    }

    func newFunction(someString: String) {


    }

    func someFunction(_ someString: String) {


    }

    func capitalize(_ someString: String) -> String {

        return someString.uppercased()

    }
}

