//
//  NextViewController.swift
//  Tab1
//
//  Created by Thanathip Suppapantita on 27/5/20.
//  Copyright © 2020 MFEC Public Company Limited. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        log.verbose("Tab 1 - Next")
    }

}
