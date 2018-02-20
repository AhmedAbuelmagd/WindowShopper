//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by Ahmed Abuelmagd on 2/20/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8725985044, green: 0.8725985044, blue: 0.8725985044, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    override func prepareForInterfaceBuilder() {
        customView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    func customView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5012307363)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if placeholder == nil {
            placeholder = " "
        }
        let place = NSAttributedString ( string : placeholder! , attributes : [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
}
