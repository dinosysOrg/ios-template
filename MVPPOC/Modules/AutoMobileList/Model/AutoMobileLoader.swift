//
//  ArrayDataSource.swift
//  MVPPOC
//
//  Created by HTSI on 06/25/16.
//  Copyright © 2016 Dinosys. All rights reserved.
//
import Foundation

typealias AutoMobileLoaderSuccessResonse = ((autoMobiles: Array<AutoMobile>) -> Void)?
typealias AutoMobileLoaderFailureResonse = ((error: NSError) -> Void)?

class AutoMobileLoader {
    static func loadListOfAutoMobiles(success: AutoMobileLoaderSuccessResonse, failure: AutoMobileLoaderFailureResonse) {
        if let path = NSBundle.mainBundle().pathForResource("autoMobileList", ofType: "json") {
            do {
                let jsonData = try! NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingMappedIfSafe)
                
                let jsonResult: NSDictionary = try! NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                
                if let listOfAutomobileDictionaries = jsonResult.objectForKey("Automobiles") as! NSArray! {
                    
                    var tempArray = [AutoMobile]()
                    
                    for autoMobileDictionary in listOfAutomobileDictionaries {
                        if let autoMobileDict: NSDictionary = autoMobileDictionary as? NSDictionary {
                            let make = autoMobileDict["make"] as? String
                            let model = autoMobileDict["model"] as? String
                            let year = autoMobileDict["year"] as? String
                            
                            tempArray.append(AutoMobile.init(make: make!, model: model!, year: year!))
                        }
                    }
                    
                    success?(autoMobiles: tempArray)
                }
            } catch let error as NSError {
                failure?(error: error)
            }
            
        }
        
        
    }
}