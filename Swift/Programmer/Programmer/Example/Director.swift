//
//  Director.swift
//  Programmer
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import Foundation

class Director {
    private var projects = [String: Paper]()
    
    func addProject(name: String, paper: Paper) {
        self.projects.updateValue(paper, forKey: name)
    }
    
    func runProject(name: String) {
        if !projects.containKey(key: name) {
            fatalError("no project")
        }
        
        let paper = projects[name]
        
        if paper is ServerClient {
            let project = paper as! ServerClient
            let frontEnd = FrontEnd()
            let backEnd = BackEnd()
            
            project.setFrontEndProgrammer(programmer: frontEnd)
            project.setBackEndProgrammer(programmer: backEnd)
            

            /*
             paper as! ServerClient
             frontEnd 에게 ServerClient Type 을 넘겨주고 있다.
             이것은 Context error 를 발생 시킨다.
             FrontEnd 내부에서 다운 캐스팅을 하기 때문에
             Test Case 를 100개를 작성해도 101번째 에러가 발생한다.
             즉, 특정 상황에서만 발생하기 때문이다.
             
             class FrontEnd: Programmer {
                 if paper is Client {
                     let pb = paper as! Client
                     self.language = pb.language
                     self.library = pb.library
                 }
             }
             */
            let client = frontEnd.makeProgram(paper: project)
            let server = backEnd.makeProgram(paper: project)
            
            deploy(projectName: name, programs: [client, server])
        } else if paper is Client {
            let project = paper as! Client
            let frontEnd = FrontEnd()
            project.setProgrammer(programmer: frontEnd)
            deploy(projectName: name, programs: [frontEnd.makeProgram(paper: project)])
        }
    }
    
    private func deploy(projectName: String, programs: [Program]) {
    }
}

extension Dictionary {
    func containKey(key: Key) -> Bool {
        return self[key] != nil
    }
}
