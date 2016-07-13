//
//  ArrayDataSource.swift
//  MVPPOC
//
//  Created by HTSI on 06/25/16.
//  Copyright © 2016 Dinosys. All rights reserved.
//

import Foundation
class AutoMobile: NSObject {
    var make:   String = ""
    var model:  String = ""
    var year:   String = ""
    
    override init() {
        super.init()
    }
    
    convenience init(make: String, model: String, year: String) {
        self.init()
        
        self.make = make
        self.model = model
        self.year = year
    }
}