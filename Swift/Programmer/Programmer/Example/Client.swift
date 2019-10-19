//
//  Client.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class Client: Paper {
    let library = Library(name: "vueJS")
    let language = Language(name: "kotlinJS")
    
    var programmer: Programmer?
    
    func setProgrammer(programmer: Programmer) {
        self.programmer = programmer
    }
}
