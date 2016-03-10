//
//  AddPostVC.swift
//  MyHood
//
//  Created by Emanuel  Guerrero on 3/10/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2
        postImage.clipsToBounds = true
    }
    
    @IBAction func addPicButtonTapped(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func makePostButtonTapped(sender: UIButton) {
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
