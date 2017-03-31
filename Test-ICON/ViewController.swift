//
//  ViewController.swift
//  Test-ICON
//
//  Created by Alberto Pasca on 31/03/17.
//  Copyright © 2017 albertopasca.it. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeIcon(_ sender: UISegmentedControl) {
        
        var name = ""
        switch sender.selectedSegmentIndex {
        case 0:
            name = "a"
            break
        case 1:
            name = "b"
            break
        case 2:
            name = "c"
            break
        default:
            break
        }

        UIApplication.shared.setAlternateIconName(name) { (error) in
            if let error = error {
                print("err: \(error)")
            }
        }

    }

}

