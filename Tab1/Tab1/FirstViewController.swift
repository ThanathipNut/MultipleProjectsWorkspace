//
//  FirstViewController.swift
//  Main
//
//  Created by Thanathip Suppapantita on 27/5/20.
//  Copyright © 2020 MFEC Public Company Limited. All rights reserved.
//

import UIKit
import DependencyPod

import SwiftyBeaver
let log = SwiftyBeaver.self

open class FirstViewController: UIViewController {
    
    @IBOutlet weak open var textField: UITextField!
    let userDefaults = UserDefaults.standard

    override open func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // add log destinations. at least one is needed!
        let console = ConsoleDestination()  // log to Xcode Console
        
        // use custom format and set console output to short time, log level & message
        console.format = "$DHH:mm:ss$d $L $M"

        // add the destinations to SwiftyBeaver
        log.addDestination(console)
    }
    
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        log.verbose("Tab 1")
    }
    
    @IBAction func sendText(_ sender: Any) {
        userDefaults.set(textField.text, forKey: "textFromFirstView")
        performSegue(withIdentifier: "SecondViewUnwindSegue", sender: nil)
    }
    
    @IBAction func prepareFirstView(unwindsSegue: UIStoryboardSegue) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
            self.textField.text = self.userDefaults.string(forKey: "textFromSecondView")
        }
        log.debug("unwindsSegue to FirstView")
    }

}

