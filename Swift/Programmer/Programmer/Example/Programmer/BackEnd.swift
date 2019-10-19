//
//  BackEnd.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation


class BackEnd: Programmer {
    private var server: Server?
    private var language: Language?
    
    func makeProgram(paper: Paper) -> Program {
        /*
         BackEnd 도 마찬가지로 리스코프치환원칙을 위반하고 있다.
         */
        if paper is ServerClient {
            let pb = paper as! ServerClient
            self.server = pb.server
            self.language = pb.backendLanguage
        }
        // else 가 없으면 아무런 에러가 발생하지 않는다. (Context error 가 발생)
        return makeBackEndProgram()
    }
    
    private func makeBackEndProgram() -> Program {
       return Program()
    }
}
