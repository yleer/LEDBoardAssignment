//
//  ViewController.swift
//  LEDBoardAssignment
//
//  Created by Yundong Lee on 2021/10/01.
//

import UIKit

class BoardViewController: UIViewController {

    @IBOutlet weak var motherView: UIView!
    @IBOutlet weak var textInputFeild: UITextField!
    @IBOutlet weak var contentLabel: UILabel!
    
    let colorSet = [UIColor.white, .blue, .green, .magenta, .gray, .cyan]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        motherView.layer.cornerRadius = 20
        
    }
    
    
    @IBAction func tappedOutside(_ sender: UITapGestureRecognizer) {
    
        if textInputFeild.isEditing{
            view.endEditing(true)
        }else{
            if motherView.isHidden == true{
                motherView.isHidden = false
            }else{
                motherView.isHidden = true
            }
        }
    }
    
  
    @IBAction func endEditing(_ sender: UITextField) {
        contentLabel.text = textInputFeild.text
        view.endEditing(true)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if let tappedButton = sender.titleLabel?.text{
            if tappedButton == "보내기"{
                contentLabel.text = textInputFeild.text
            }else{
                contentLabel.textColor = colorSet.randomElement()
            }
        }
    }
}

