//
//  DataStruct.swift
//  Dependency
//
//  Created by Thanathip Suppapantita on 27/5/20.
//  Copyright © 2020 MFEC Public Company Limited. All rights reserved.
//

import Foundation

open struct DataStruct {
    
    var textFromFirstView: String = ""
    var textFromSecondView: String = ""
    
    private init() {}
    
    static var shared: Data = Data()
    
}
