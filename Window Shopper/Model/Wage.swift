//
//  Wage.swift
//  Window Shopper
//
//  Created by Ahmed Abuelmagd on 2/20/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import Foundation
class Wage {
    class func getHours (forWage wage:Double, andPrice price:Double) ->Int {
         return Int(ceil(price/wage))
    }
}
