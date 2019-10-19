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
        if let project = projects[name] {
            deploy(projectName: name, programs: project.run())
        } else {
            fatalError("no project")
        }
    }
    
    private func deploy(projectName: String, programs: [Program]) {
        print("deploy: \(projectName)  programs: \(String(describing: programs.self))")
    }
}

extension Dictionary {
    func containKey(key: Key) -> Bool {
        return self[key] != nil
    }
}
