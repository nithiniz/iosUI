//
//  SecondViewController.swift
//  iOSUI
//
//  Created by Nithin Nizam on 08/11/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var toggle: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateProgress()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func sliderChanged(_ sender: Any) {
        updateProgress()
    }

    @IBAction func toggle(_ sender: Any) {
        updateProgress()
    }

    func updateProgress() {

        progress.setProgress(toggle.isOn ? 1-slider.value : slider.value, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
