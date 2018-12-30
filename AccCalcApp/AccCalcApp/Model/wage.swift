//
//  wage.swift
//  AccCalcApp
//
//  Created by Abhishek Dantale on 31/12/18.
//  Copyright © 2018 Abhishek Dantale. All rights reserved.
//

import Foundation

class Wage{
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        return(Int(ceil(price/wage)))
    }
}
