//
//  RedViewController.swift
//  Segues and Navigation Control
//
//  Created by Gabriel Drai on 20/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

  
    @IBOutlet weak var Gotcha: UILabel!
    
    var youFoundMe = "You FOund Me!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Gotcha.text = youFoundMe
    }
    
    @IBAction func back(_ sender: Any)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
}
