//
//  ServerClient.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class ServerClient: Paper {
    let server = Server(name: "test")
    let backendLanguage = Language(name: "java")
    let frontendLanguage = Language(name: "kotlinJS")
    
    private var backendProgrammer: Programmer?
    private var frontendProgrammer: Programmer?
    
    
    func setBackEndProgrammer(programmer: Programmer) {
        self.backendProgrammer = programmer
    }
    
    func setFrontEndProgrammer(programmer: Programmer) {
        self.frontendProgrammer = programmer
    }
    
}
