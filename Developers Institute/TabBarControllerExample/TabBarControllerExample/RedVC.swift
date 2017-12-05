//
//  ViewController.swift
//  TabBarControllerExample
//
//  Created by Gabriel Drai on 21/11/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit


class RedVC: UIViewController {

    override func viewDidLoad() {
        tabBarItem.badgeValue = "🖕🏼"
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        print("I've beeen loaded")
    }
    
    override func viewDidAppear(_ animated: Bool) {
       super .viewDidAppear (animated)
        print("I have appeared")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
       super .viewWillDisappear(animated)
        print("I will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super .viewDidDisappear(animated)
         print("you can't see me")
        
    }
    
    @IBAction func buttonAction(_ sender: Any)
    {
        print("anything I want")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

