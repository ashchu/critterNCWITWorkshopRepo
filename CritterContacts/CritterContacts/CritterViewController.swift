//
//  ViewController.swift
//  CritterContacts
//
//  Created by YOU on 7/20/19.
//

import UIKit
import os.log

//This view controller controls the main.storyboard
class CritterViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    //MARK: Properties
    
//    neccitas esta aqui or else it might C R A S H that would be bad ooof
//    What does IB stand for ?
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var critterNameLabel: UILabel!
    @IBOutlet weak var critterImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle text field's user input through delegate callbacks
        nameTextField.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        //        But what is a nib.
    }

    //MARK: UITextFieldDelegate
//    Asks if text field should process through
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        //Hide keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        critterNameLabel.text = textField.text
    }
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Ahh yikes it didn't work. Expected a dictionary with an image, but got punked (:\(info) )")
        }
        critterImage.image = selectedImage
        
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: Navigation
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        
//        changes the text when button clicked
//        critterNameLabel.text = "Yay you werked 👾"
        textFieldDidEndEditing(nameTextField)
//        stores the name in text field and inserts it in text below.
    }
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        //        Hides Keyboard
        
        nameTextField.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
     
//        this is the same as imagePickerController.sourceType = imagePickerController.sourcetype.photolibrary
        
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
        
    }
    //MARK: Private Methods
    
}

