//
//  BackEnd.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

protocol BackEnd: Programmer {
    var server: Server? { get }
    var language: Language? { get }
}

extension BackEnd {
    func makeProgram() -> Program {
        return Program()
    }
}
