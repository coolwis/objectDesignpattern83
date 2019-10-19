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
    
    func setData(programmer: Programmer) {
        if programmer is FrontEnd {
            let frontend = programmer as! FrontEnd
            frontend.setLaunguage(language: frontendLanguage)
        } else if programmer is BackEnd {
            let backend = programmer as! BackEnd
            backend.setLaunguage(language: backendLanguage)
            backend.setServer(server: server)
        }
    }
    
}
