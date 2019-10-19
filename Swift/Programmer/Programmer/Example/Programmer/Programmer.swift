//
//  Programmer.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

protocol Programmer {
//    Programmer는 Director에게 Paper를 제공 받아 Program으로 모델링 하는 메소드가 필요하다.
    func makeProgram(paper: Paper) -> Program
}
