//
//  ViewController.swift
//  Photo Example
//
//  Created by Gabriel Drai on 04/12/2017.
//  Copyright © 2017 Gabriel Drai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBAction func takePhoto(_ sender: Any) {
        let picker : UIImagePickerController = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
     self.present(picker, animated: true, completion: nil)
    
    }
    
   
    
    @IBAction func getPhotoFromLibrary(_ sender: Any) {
       
        let picker : UIImagePickerController = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        
        self.present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController (_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        guard let selectedImage = info [UIImagePickerControllerOriginalImage] as? UIImage else { return }
        self.ImageView.image = selectedImage
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

