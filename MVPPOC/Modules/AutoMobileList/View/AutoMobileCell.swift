//
//  ArrayDataSource.swift
//  MVPPOC
//
//  Created by HTSI on 06/25/16.
//  Copyright © 2016 Dinosys. All rights reserved.
//

import Foundation
import UIKit

class AutoMobileCell: UITableViewCell {
    
    static func nib() -> UINib {
        return UINib(nibName: String(AutoMobileCell.self), bundle: nil)
    }
    
    func updateCell(cellTitle: String, yearSubtitle: String) {
        self.textLabel?.text = cellTitle
        self.detailTextLabel?.text = yearSubtitle
    }
}