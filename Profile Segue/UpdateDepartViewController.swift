//
//  UpdateDepartViewController.swift
//  Profile Segue
//
//  Created by Kailash Chivhe on 20/02/23.
//

import UIKit

class UpdateDepartViewController: UIViewController {
    var user: User?
    
    
    @IBOutlet weak var segmentedDepartment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        if user?.department == "CS"{
            segmentedDepartment.selectedSegmentIndex = 0
        }
        else if user?.department == "SIS"{
            segmentedDepartment.selectedSegmentIndex = 1
        }
        else if user?.department == "BIO"{
            segmentedDepartment.selectedSegmentIndex = 2
        }
    }
    
    
    @IBAction func cancelClicked(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindDepartToProfile"{
            if segmentedDepartment.selectedSegmentIndex == 0{
                user?.department = "CS"
            }
            else if segmentedDepartment.selectedSegmentIndex == 1{
                user?.department = "SIS"
            }
            else if segmentedDepartment.selectedSegmentIndex == 2{
                user?.department = "BIO"
            }
            let destinationVC = segue.destination as! ProfileViewController
            destinationVC.user = user
        }
    }
}
