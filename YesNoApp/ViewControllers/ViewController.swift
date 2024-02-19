//
//  ViewController.swift
//  YesNoApp
//
//  Created by Антон Баландин on 19.02.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.text = ""
    }


    @IBAction func answerButtonAction() {
        let answer = Bool.random()
        
        answerLabel.text = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.answerLabel.text = answer ? "Yes" : "No"
            self.imageView.image = answer ? UIImage(named: "Yes") : UIImage(named: "No")
        }
    }
}
