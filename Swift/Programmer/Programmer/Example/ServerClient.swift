//
//  ServerClient.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

protocol ServerClient: Paper {
    var server: Server { get }
    var backendLanguage: Language { get }
    var frontendLanguage: Language { get }
    
    var backendProgrammer: HasProgrammer? { get set }
    var frontendProgrammer: HasProgrammer? { get set }
}

extension ServerClient {
    mutating func setBackEndProgrammer(programmer: HasProgrammer) {
        self.backendProgrammer = programmer
    }
    
    mutating func setFrontEndProgrammer(programmer: HasProgrammer) {
        self.frontendProgrammer = programmer
    }
}
