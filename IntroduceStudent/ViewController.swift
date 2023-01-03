//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Sanskar Lamsal on 1/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearsSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var introduceSelfButton: UIButton!
    @IBOutlet weak var backgroundButton: UIButton!
    
    @IBOutlet weak var backgroundButtonSystem: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Let's us chose the title we have selected from the segmented control
        let year = yearsSegmentedControl.titleForSegment(at: yearsSegmentedControl.selectedSegmentIndex)
        
        // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
        // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = " My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets. "
         
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func changeToRed(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.red
    }
    @IBAction func changeToSystem(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.systemBackground
    }
}

