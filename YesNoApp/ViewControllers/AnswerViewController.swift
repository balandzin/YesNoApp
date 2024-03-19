//
//  ViewController.swift
//  YesNoApp
//
//  Created by Антон Баландин on 19.02.24.
//

import UIKit

final class AnswerViewController: UIViewController {
    
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var languageSegmentedControl: UISegmentedControl!
    @IBOutlet var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValues()
        
        answerLabel.text = ""
        imageView.image = nil
    }
    
    
    @IBAction func answerButtonAction() {
        answerLabel.text = ""
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.setValues()
        }
    }
    
    @IBAction func LanguageSCAction() {
        setValues()
    }
    
    private func setValues() {
        let answer = Bool.random()

        if languageSegmentedControl.selectedSegmentIndex == 1 {
            answerLabel.text = answer ? "Yes" : "No"
            answerButton.setTitle("Get answer", for: .normal)

        } else {
            answerLabel.text = answer ? "Да" : "Нет"
            answerButton.setTitle("Получить ответ", for: .normal)
        }
        imageView.image = answer ? UIImage(named: "Yes") : UIImage(named: "No")
    }
}
