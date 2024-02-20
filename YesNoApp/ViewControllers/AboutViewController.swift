//
//  AboutViewController.swift
//  YesNoApp
//
//  Created by Антон Баландин on 20.02.24.
//

import UIKit

final class AboutViewController: UIViewController {
    
    @IBOutlet var versionLabel: UILabel!
    @IBOutlet var developerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        versionLabel.text = "Version: \(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0")"
        developerLabel.text = "Developer: Anton Balandzin"
    }
 

}
