//
//  Programmer.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

protocol HasProgrammer {
    
}
protocol Programmer: HasProgrammer {
    associatedtype T: Paper
//    Programmer는 Director에게 Paper를 제공 받아 Program으로 모델링 하는 메소드가 필요하다.
    func setData(paper: T)
    func makeProgram() -> Program
}

// 중복이 있었던 코드는 여기에서 일괄적으로 처리한다.
extension Programmer {
    func getProgram(paper: T) -> Program {
//        paper.setData(programmer: self)
        /*
         부모 자식간 통신할 경우에도 헐리우드 원칙을 지켜야
         부모에 여파가 없다.
         */
        setData(paper: paper)
        return makeProgram()
    }
}
