//
//  ViewController.swift
//  AdvanceTopic
//
//  Created by Gaurang Patel on 18/07/17.
//  Copyright © 2017 Gaurang Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIImagePickerControllerDelegate  , UINavigationControllerDelegate {
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var nametext: UITextField!
    
    
    
    
    let picker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self 
    }

    @IBAction func shareAction(_ sender: Any)
    {
        picker.sourceType = .photoLibrary
        picker.allowsEditing = false
        present(picker, animated: true, completion: nil)
        
        
        
        
        
        
    }
    
    @IBAction func sharetextAct(_ sender: UIButton)
    {
        let objectsToShare = ["hello there"]
        let activityController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityController.excludedActivityTypes = [UIActivityType.airDrop,UIActivityType.assignToContact,UIActivityType.postToFacebook, UIActivityType.postToTwitter]
        activityController.popoverPresentationController?.sourceView = self.view
        
        
        
        
        present(activityController, animated: true, completion: nil)
        
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]){
        if let selectedimage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            
            imageview.image = selectedimage
            imageview.contentMode = .scaleAspectFill
            dismiss(animated: true, completion: nil)
        }
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func shareAct(_ sender: UIButton)
    {
        guard let image1 = imageview.image else {
            return
        }
        
        let objectsToShare = [image1]
        let activityController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityController.excludedActivityTypes = [UIActivityType.airDrop,UIActivityType.assignToContact,UIActivityType.postToFacebook, UIActivityType.postToTwitter]
        activityController.popoverPresentationController?.sourceView = self.view
        
        
        
        
        present(activityController, animated: true, completion: nil)
            
        
    }
    
}

