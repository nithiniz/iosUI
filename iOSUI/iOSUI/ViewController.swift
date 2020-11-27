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

        let prg = Program("")
        prg.calculate()
        prg.anotherString = "some value"

    }


}

