//
//  UpdatePasswordViewController.swift
//  Profile Segue
//
//  Created by Kailash Chivhe on 20/02/23.
//

import UIKit

class UpdatePasswordViewController: UIViewController {
    var user: User?
    
    @IBOutlet weak var textFieldPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textFieldPassword.text = user?.password ?? ""
    }
    
    @IBAction func cancelClicked(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindPasswordToProfile"{
            user?.password = textFieldPassword.text ?? ""
            let destinationVC = segue.destination as! ProfileViewController
            destinationVC.user = user
        }
    }
}
