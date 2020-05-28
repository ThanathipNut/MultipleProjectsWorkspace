//
//  MainTabBarController.swift
//  Main Module
//
//  Created by Thanathip Suppapantita on 12/5/20.
//  Copyright © 2020 MFEC Public Company Limited. All rights reserved.
//

import UIKit
import Tab1
import Tab2

import SwiftyBeaver
let log = SwiftyBeaver.self

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // add log destinations. at least one is needed!
        let console = ConsoleDestination()  // log to Xcode Console
        
        // use custom format and set console output to short time, log level & message
        console.format = "$DHH:mm:ss$d $L $M"

        // add the destinations to SwiftyBeaver
        log.addDestination(console)
        log.verbose("Main Module")
        
        // test import Tabs
        var _: FirstViewController
        var _: SecondViewController
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
