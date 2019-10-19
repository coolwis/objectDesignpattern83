//
//  Client.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

protocol Client: Paper {
    var library: Library? { get }
    var language: Language? { get }
    
    var programmer: HasProgrammer? { get set }
}

extension Client {
    mutating func setProgrammer(programmer: HasProgrammer) {
        self.programmer = programmer
    }
}
