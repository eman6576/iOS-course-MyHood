//
//  AddPostVC.swift
//  MyHood
//
//  Created by Emanuel  Guerrero on 3/10/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    @IBAction func addPicButtonTapped(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func makePostButtonTapped(sender: UIButton) {
        if let title = titleTextField.text, let desc = descriptionTextField.text, let image = postImage.image {
            let imagePath = DataService.instance.saveImageAndCreatePath(image)
            
            let post = Post(imagePath: imagePath, title: title, description: desc)
            
            DataService.instance.addPost(post)
            
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        
        postImage.image = image
    }
}
