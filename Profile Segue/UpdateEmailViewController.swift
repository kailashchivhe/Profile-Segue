//
//  UpdateEmailViewController.swift
//  Profile Segue
//
//  Created by Kailash Chivhe on 20/02/23.
//

import UIKit

class UpdateEmailViewController: UIViewController {
    var user: User?
    
    
    @IBOutlet weak var textFieldEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textFieldEmail.text = user?.email ?? ""
    }
    
    @IBAction func updateEmail(_ sender: UIButton) {
        user?.email = textFieldEmail.text ?? ""
        NotificationCenter.default.post(name: Notification.Name("UpdateEmail"), object: user )
    }
    
    @IBAction func cancelClicked(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindEmailToProfile"{
//            user?.email = textFieldEmail.text ?? ""
//            let destinationVC = segue.destination as! ProfileViewController
//            destinationVC.user = user
        }
    }
}
