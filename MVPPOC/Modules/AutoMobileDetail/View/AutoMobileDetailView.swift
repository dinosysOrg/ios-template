//
//  ArrayDataSource.swift
//  MVPPOC
//
//  Created by HTSI on 06/25/16.
//  Copyright © 2016 Dinosys. All rights reserved.
//

import Foundation
import UIKit

protocol AutoMobileDetailViewActionDelegate {
    func autoMobileDetailViewDidDeleteButtonPressed(autoMobileDetailView: AutoMobileDetailView)
}

class AutoMobileDetailView: UIView {
    
    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    var delegate: AutoMobileDetailViewActionDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    @IBAction func didDeleteButtonPressed(sender: AnyObject) {
        if (self.delegate != nil) {
            self.delegate!.autoMobileDetailViewDidDeleteButtonPressed(self)
        }
    }
}

extension AutoMobileDetailView: AutoMobileDetailViewProtocol {
    
    func displayAutoMobile(autoMobile: AutoMobile) {
        self.makeLabel.text     = autoMobile.make
        self.modelLabel.text    = autoMobile.model
        self.yearLabel.text     = autoMobile.year
    }
}

extension UIView {
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
}