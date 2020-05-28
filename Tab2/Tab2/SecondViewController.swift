//
//  SecondViewController.swift
//  Main
//
//  Created by Thanathip Suppapantita on 27/5/20.
//  Copyright © 2020 MFEC Public Company Limited. All rights reserved.
//

import UIKit
import DependencyPod

import SwiftyBeaver
let log = SwiftyBeaver.self

open class SecondViewController: UIViewController {
    
    @IBOutlet weak open var textField: UITextField!

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
        
        log.verbose("Tab 2")
    }
    
    @IBAction func sendText(_ sender: Any) {
        DataStruct.shared.textForFirstView = textField.text ?? ""
        log.debug("textForFirstView \(DataStruct.shared.textForFirstView)")
        log.debug("textForSecondView \(DataStruct.shared.textForSecondView)")
        performSegue(withIdentifier: "FirstViewUnwindSegue", sender: nil)
    }
    
    @IBAction func prepareSecondView(unwindsSegue: UIStoryboardSegue) {
        textField.text = DataStruct.shared.textForSecondView
        
        log.debug("unwindsSegue to SecondView")
        log.debug("textForFirstView \(DataStruct.shared.textForFirstView)")
        log.debug("textForSecondView \(DataStruct.shared.textForSecondView)")
    }

}

