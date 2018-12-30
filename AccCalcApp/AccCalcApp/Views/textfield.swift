//
//  textfield.swift
//  AccCalcApp
//
//  Created by Abhishek Dantale on 30/12/18.
//  Copyright © 2018 Abhishek Dantale. All rights reserved.
//

import UIKit


@IBDesignable class currencytextfield: UITextField {
    
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
