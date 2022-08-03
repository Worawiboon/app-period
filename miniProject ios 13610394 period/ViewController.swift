//
//  ViewController.swift
//  miniProject ios 13610394 period
//
//  Created by Worawiboon on 5/10/2562 BE.
//  Copyright © 2562 Sathone_w. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calPeriod1: UIButton!
    @IBOutlet weak var calPeriod: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupButtons()
    }
    func setupButtons() {
        calPeriod.layer.cornerRadius = 8
        calPeriod1.layer.cornerRadius = 8
    }

}

