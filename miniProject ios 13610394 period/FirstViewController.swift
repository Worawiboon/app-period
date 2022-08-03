//
//  FirstViewController.swift
//  miniProject ios 13610394 period
//
//  Created by Worawiboon on 5/10/2562 BE.
//  Copyright © 2562 Sathone_w. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var data = 0
    
    @IBOutlet weak var calPeriod: UIButton!
    
    @IBOutlet weak var value: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var textField2: UITextField!
    
  

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        
//        if caldate = 31{
//          textField = (caldate-30)
//
//        }
    
    }
    func setupButtons() {
        calPeriod.layer.cornerRadius = 8
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func caldate(date : Int, round : Int) -> Int {
        return (round-14)+date
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        
        
        
        if let dateFromInput  = textField.text{
            let intdate = (dateFromInput as NSString).intValue
            
            let roundtFromInput = textField2.text
            let intround = (roundtFromInput as! NSString).intValue
        
            var datevalue = caldate(date : Int(intdate) , round : Int(intround) )
        if let weightFromInput  = textField.text{
            let floatweight = (weightFromInput as NSString).floatValue
        
        
            if (datevalue >= 31 )  {
                data = datevalue-31
                value.text = "วันไข่ตก  วันที่ \(data) เดือนถัดไป"
               
        }
            else if (datevalue <= 31){
                value.text = "วันไข่ตก  วันที่ \(datevalue) เดือนนี้ "
                
            }
        
    
    }
}
    

    

    
}
}
