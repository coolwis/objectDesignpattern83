//
//  FrontEnd.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation


class FrontEnd: Programmer {
    private var language: Language?
    private var library: Library?
    
    func makeProgram(paper: Paper) -> Program {
        /*
         Paper 는 language 와 library 에 정보를 가지고 있지 않기 때문에
         정보를 받기 위해 Client 로 다운캐스팅을 하게 되지만 결국 LSP 와 OCP 를 어기게 된다.
         */
//        if paper is Client {
//            let pb = paper as! Client
//            self.language = pb.language
//            self.library = pb.library
//        }
        // else 가 없으면 아무런 에러가 발생하지 않는다. (Context error 가 발생)
        
//        paper.setData(programmer: self)
//        return makeFrontEndProgram()
        
        return self.getProgram(paper: paper)
    }
    
    
    func setLibrary(library: Library) {
        self.library = library
    }
    
    func setLaunguage(language: Language) {
        self.language = language
    }
    
    private func makeFrontEndProgram() -> Program {
       return Program()
    }
}
