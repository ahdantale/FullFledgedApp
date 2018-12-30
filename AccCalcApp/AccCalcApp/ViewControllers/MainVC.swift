//
//  ViewController.swift
//  AccCalcApp
//
//  Created by Abhishek Dantale on 30/12/18.
//  Copyright © 2018 Abhishek Dantale. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hourlyWage: currencytextfield!
    
    @IBOutlet weak var ItemPrice: currencytextfield!
    
    @IBOutlet weak var resultlbl: UILabel!
   
    @IBOutlet weak var hrsLbl: UILabel!
    
    @IBAction func clearclcpress(_ sender: Any) {
        resultlbl.isHidden=true
        hrsLbl.isHidden=true
        hourlyWage.text=""
        ItemPrice.text=""
    }
    @objc func calculatehours()
    {
        if let wagetxt = hourlyWage.text, let ipricetxt = ItemPrice.text{
            if let wage = Double(wagetxt), let iprice = Double(ipricetxt){
                view.endEditing(true)
                resultlbl.isHidden=false
                hrsLbl.isHidden=false
                resultlbl.text="\(Wage.getHours(forWage: wage, andPrice: iprice))"
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resultlbl.isHidden=true
        hrsLbl.isHidden=true
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.height, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculatehours), for: .touchUpInside)
        
        hourlyWage.inputAccessoryView = calcBtn
        ItemPrice.inputAccessoryView = calcBtn
    }

    


}

