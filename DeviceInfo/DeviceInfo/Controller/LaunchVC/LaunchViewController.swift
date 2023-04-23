//
//  LaunchViewController.swift
//  DeviceInfo
//
//  Created by Ashwin Somkuwar on 23/04/23.
//

import UIKit

class LaunchViewController: UIViewController {
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    @IBAction func getDetailsButtonPressed(_ sender: Any) {
        let detailsVC = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
}
