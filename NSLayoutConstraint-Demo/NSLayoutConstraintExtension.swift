//
//  NSLayoutConstraintExtension.swift
//  NSLayoutConstraint-Demo
//
//  Created by Alan Liu on 2021/12/09.
//

import UIKit

extension NSLayoutConstraint {
    
    func changeMultiplier(_ multiplier: CGFloat) -> NSLayoutConstraint {
        
        let newConstraint = NSLayoutConstraint(
            item: firstItem!,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        
        return newConstraint
    }
}
