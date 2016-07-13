//
//  ArrayDataSource.swift
//  MVPPOC
//
//  Created by HTSI on 06/25/16.
//  Copyright © 2016 Dinosys. All rights reserved.
//

import Foundation

class AutoMobileListPresenter: NSObject {
    
    var model: AutoMobileListProtocol = AutoMobileList()
    var view: AutoMobileListViewProtocol = AutoMobileListViewController()
    
    override init() {
        super.init()
    }
    
    convenience init(model: AutoMobileListProtocol, view: AutoMobileListViewProtocol) {
        self.init()
        
        self.model = model
        self.view = view
    }
    
    static func bind(model: AutoMobileListProtocol, view: AutoMobileListViewProtocol) -> AutoMobileListPresenter {
        return AutoMobileListPresenter.init(model: model, view: view)
    }
    
    func displayViewFromAutoMobileList() {
        self.view.displayAutoMobiles(self.model.loadAutoMobiles())
    }
}