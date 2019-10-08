//
//  ViewController.swift
//  Jprogressbar
//
//  Created by CCC on 07/10/2019.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryBar: JBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryBar.progressValue = 85.0 //Give percentage value from 100
        countryBar.progressColor = UIColor.red
        countryBar.trackColor = UIColor.gray
        
        countryBar.borderWidth = 1.0
        countryBar.borderColor = UIColor.yellow
    
    }


}

