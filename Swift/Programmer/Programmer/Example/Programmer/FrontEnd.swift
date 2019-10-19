//
//  ClientFrontEnd.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation


protocol FrontEnd: Programmer {
    var language: Language? { get }
    var library: Library? { get }
}

extension FrontEnd {
    func makeProgram() -> Program {
        return Program()
    }
}
