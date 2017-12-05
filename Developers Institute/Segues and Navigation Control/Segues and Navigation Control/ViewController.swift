//
//  ViewController.swift
//  Segues and Navigation Control
//
//  Created by Gabriel Drai on 20/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func goBlue(_ sender: Any) {
        self.performSegue(withIdentifier: "blueSegue", sender: nil)
    }
    @IBAction func nextView(_ sender: Any) {
        self.performSegue(withIdentifier: "redSeg", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "redSeg" {
            if let vc: RedViewController = segue.destination as?
                RedViewController
            {
                if let text : String = self.textField.text
                {
                
                vc.youFoundMe = text
            }
        }
    }


}

}
