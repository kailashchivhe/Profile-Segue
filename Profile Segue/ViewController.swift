//
//  ViewController.swift
//  Profile Segue
//
//  Created by Kailash Chivhe on 15/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var departmentSegmentedControl: UISegmentedControl!
    
    var user: User!
    
    @IBAction func onSubmitClicked(_ sender: UIButton) {
        if textFieldName.hasText && textFieldEmail.hasText && textFieldPassword.hasText {
            var department = "SIS"
            if departmentSegmentedControl.selectedSegmentIndex == 0{
                department = "CS"
            }
            else if departmentSegmentedControl.selectedSegmentIndex == 2{
                department = "BIO"
            }
            
            user = User(name: textFieldName.text ?? "", email: textFieldEmail.text ?? "", password: textFieldPassword.text ?? "", department: "\(department)")
        }
        else{
            showAlert("Please enter valid data.")
        }
    }
    
    func showAlert(_ message: String) {
        let alert = UIAlertController(title: "Invalid Data", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "clear", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueFromHomeToProfile"{
            let destinationVC = segue.destination as! ProfileViewController
            destinationVC.user = user
        }
    }
}

