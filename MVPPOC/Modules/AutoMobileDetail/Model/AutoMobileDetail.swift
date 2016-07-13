//
//  ArrayDataSource.swift
//  MVPPOC
//
//  Created by HTSI on 06/25/16.
//  Copyright © 2016 Dinosys. All rights reserved.
//

import Foundation

class AutoMobileDetail: NSObject {
    var autoMobile:     AutoMobile?      = AutoMobile()
    var autoMobileList: AutoMobileList  = AutoMobileList()
    
    override init() {
        super.init()
    }
    
    convenience init(autoMobile: AutoMobile, autoMobileList: AutoMobileList) {
        self.init()
        
        self.autoMobile = autoMobile
        self.autoMobileList = autoMobileList
    }
}

extension AutoMobileDetail: AutoMobileDetailProtocol {
    
    func deleteAutomobile() {
        self.autoMobileList.removeAutoMobile(self.autoMobile!)
        self.autoMobile = nil
    }
    
    func loadAutoMobile() -> AutoMobile {
        return self.autoMobile!
    }
}