//
//  ViewController.swift
//  Segway Sample
//
//  Created by Gabriel Drai on 19/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func blueButton(_ sender: Any) {
        
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Blue", sender: nil)
        }
    }
    
    @IBAction func whiteButton(_ sender: Any) {
    
        if segueSwitch.isOn {
            performSegue(withIdentifier: "White", sender: nil)
        }
    
    }
    
}


