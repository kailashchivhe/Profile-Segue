//
//  UpdateNameViewController.swift
//  Profile Segue
//
//  Created by Kailash Chivhe on 20/02/23.
//

import UIKit

class UpdateNameViewController: UIViewController {
    var user: User?
    
    @IBOutlet weak var textFieldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldName.text = user?.name ?? ""
    }
    

    @IBAction func cancelClicked(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindNameToProfile"{
//            user?.name = textFieldName.text ?? ""
//            let destinationVCName = segue.destination as! ProfileViewController
//            destinationVCName.user = user
        }
    }
    
    
    @IBAction func onUpdateClicked(_ sender: Any) {
        user?.name = textFieldName.text ?? ""
        NotificationCenter.default.post(name: Notification.Name("UpdateName"), object: user )
    }
}
