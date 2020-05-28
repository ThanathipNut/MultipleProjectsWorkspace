//
//  DataStruct.swift
//  Dependency
//
//  Created by Thanathip Suppapantita on 27/5/20.
//  Copyright © 2020 MFEC Public Company Limited. All rights reserved.
//

import Foundation

public struct DataStruct {
    
    public var textForFirstView: String = ""
    public var textForSecondView: String = ""
    
    private init() {
        print("new DataStruct()")
    }
    
    public static var shared: DataStruct = DataStruct()
    
}
