//
//  FirstViewController.swift
//  Main
//
//  Created by Thanathip Suppapantita on 27/5/20.
//  Copyright © 2020 MFEC Public Company Limited. All rights reserved.
//

import UIKit

import SwiftyBeaver
let log = SwiftyBeaver.self

class FirstViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // add log destinations. at least one is needed!
        let console = ConsoleDestination()  // log to Xcode Console
        
        // use custom format and set console output to short time, log level & message
        console.format = "$DHH:mm:ss$d $L $M"

        // add the destinations to SwiftyBeaver
        log.addDestination(console)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        log.verbose("Tab 1")
    }
    
    @IBAction func sendText(_ sender: Any) {
        performSegue(withIdentifier: "SecondViewUnwindSegue", sender: nil)
    }
    
    @IBAction func prepareFirstView(unwindsSegue: UIStoryboardSegue) {
        log.debug("unwindsSegue to FirstView")
    }

}

