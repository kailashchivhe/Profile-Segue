//
//  ProfileViewController.swift
//  Profile Segue
//
//  Created by Kailash Chivhe on 20/02/23.
//

import UIKit

class ProfileViewController:
    UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    var user: User?
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var departmentLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
    }
    
    func initData(){
        nameLabel.text = user?.name ?? ""
        emailLabel.text = user?.email ?? ""
        departmentLabel.text = user?.department ?? ""
        setPassword()
    }
    
    func setPassword(){
        var password = ""
        for _ in user?.password ?? "" {
            password += "*"
        }
        passwordLabel.text = password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueFromProfiletoName"{
            let destinationVCName = segue.destination as! UpdateNameViewController
            destinationVCName.user = user
        }
        else if segue.identifier == "SegueFromProfileToEmail"{
            let destinationVCEmail = segue.destination as! UpdateEmailViewController
            destinationVCEmail.user = user
        }
        else if segue.identifier == "SegueFromProfileToPassword"{
            let destinationVCPassword = segue.destination as! UpdatePasswordViewController
            destinationVCPassword.user = user
        }
        else if segue.identifier == "SegueFromProfileToDepart"{
            let destinationVCDepart = segue.destination as! UpdateDepartViewController
            destinationVCDepart.user = user
        }
    }
    
    @IBAction func onCloseClicked(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func updateName(_ sender: UIButton) {
    }
    
    
    @IBAction func updateEmail(_ sender: UIButton) {
    }
    
    
    @IBAction func updatePassword(_ sender: UIButton) {
    }
    
    
    @IBAction func updateDepartment(_ sender: UIButton) {
    }
    
    @IBAction func unwindToProfile(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
        initData()
    }
}
