//
//  textfield.swift
//  AccCalcApp
//
//  Created by Abhishek Dantale on 30/12/18.
//  Copyright © 2018 Abhishek Dantale. All rights reserved.
//

import UIKit


@IBDesignable class currencytextfield: UITextField {
    
    
   override func draw(_ rect: CGRect) {
        let size: CGFloat=20
        let currencylbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2 - size/2), width: size, height: size))
        currencylbl.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6)
    currencylbl.textColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    currencylbl.textAlignment = .center
    currencylbl.clipsToBounds=true
    currencylbl.layer.cornerRadius=5.0
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = .current
    currencylbl.text = formatter.currencySymbol
    addSubview(currencylbl)
    }
    
    
    override func prepareForInterfaceBuilder() {
        custominterfacebuilder()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.6673342322, green: 0.6673342322, blue: 0.6673342322, alpha: 0.4)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        
        if placeholder != nil {
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder=place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}


func custominterfacebuilder()
{
    backgroundColor = #colorLiteral(red: 0.6673342322, green: 0.6673342322, blue: 0.6673342322, alpha: 0.4)
    layer.cornerRadius = 5.0
    textAlignment = .center
    
    
    
    if placeholder != nil {
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder=place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
}


}
}
