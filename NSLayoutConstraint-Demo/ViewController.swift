//
//  ViewController.swift
//  NSLayoutConstraint-Demo
//
//  Created by Alan Liu on 2021/12/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var constraint: NSLayoutConstraint!
    
    private var flag = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.layer.cornerRadius = 15
    }
    
    @IBAction func actionChangeMultiplier(_ sender: Any) {
        changeMultiplier(flag ? 0.5 : 1)
        flag.toggle()
    }
    
    private func changeMultiplier(_ multiplier: CGFloat) {
        let newConstraint = constraint.changeMultiplier(multiplier)
        view.removeConstraint(constraint)
        view.addConstraint(newConstraint)
        view.layoutIfNeeded()
        constraint = newConstraint
    }
}
