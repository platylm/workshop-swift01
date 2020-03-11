//
//  Hello.swift
//  Workshop01
//
//  Created by PK on 3/11/20.
//  Copyright © 2020 PK. All rights reserved.
//

import Foundation
class Hello {
    var name : String
    
    init(name:String){
        self.name = name
    }
    
    func sayHi()->String{
        "Hi, \(self.name)"
    }
}
