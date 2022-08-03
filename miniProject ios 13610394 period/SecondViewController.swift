//
//  SecondViewController.swift
//  miniProject ios 13610394 period
//
//  Created by Worawiboon on 5/10/2562 BE.
//  Copyright © 2562 Sathone_w. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    var data = 0
    
    @IBOutlet weak var calPeriod: UIButton!
    
    
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var textfield1: UITextField!
    
    
    @IBOutlet weak var value: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    func setupButtons() {
        calPeriod.layer.cornerRadius = 8
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func caldate(date : Int, round : Int) -> Int {
        return round+date
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        
        if let dateFromInput  = textfield.text{
            let intdate = (dateFromInput as NSString).intValue
            
            let roundtFromInput = textfield1.text
            let intround = (roundtFromInput as! NSString).intValue
            
            var datevalue = caldate(date : Int(intdate) , round : Int(intround) )
            if let weightFromInput  = textfield.text{
                let floatweight = (weightFromInput as NSString).floatValue
                
                
                if (datevalue >= 31 )  {
                    data = datevalue-31
                    value.text = "ประจำเดือนครั้งต่อไป  วันที่ \(data) เดือนถัดไป"
                    
                }
                else if (datevalue <= 31){
                    value.text = "ประจำเดือนครั้งต่อไป วันที่ \(datevalue) เดือนนี้ "
                    
                }
                
                
            }
        }
    }
    
    
}
