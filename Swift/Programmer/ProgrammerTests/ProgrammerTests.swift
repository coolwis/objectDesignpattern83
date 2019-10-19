//
//  ProgrammerTests.swift
//  ProgrammerTests
//
//  Created by tskim on 19/10/2019.
//  Copyright © 2019 assin. All rights reserved.
//

import XCTest
@testable import Programmer

class ProgrammerTests: XCTestCase {

    func testExample() {
        let director = Director()

        class FiananceClient: Client {
            var library: Library?
            var language: Language?
            var programmer: HasProgrammer?
            func run() -> [Program] {
                class AFrontEnd: FrontEnd {
                    var language: Language?
                    var library: Library?
                    func setData(paper: FiananceClient) {
                        self.language = paper.language
                        self.library = paper.library
                    }
                }
                let frontEnd = AFrontEnd()
                self.programmer = frontEnd
                return [frontEnd.makeProgram()]
            }
        }
        director.addProject(name: "투자", paper: FiananceClient())
        director.runProject(name: "투자")

        class FinancialLoanClient: ServerClient {
            let server: Server = Server(name: "test")
            let backendLanguage = Language(name: "java")
            let frontendLanguage = Language(name: "kotlinJS")
            var backendProgrammer: HasProgrammer?
            var frontendProgrammer: HasProgrammer?

            func run() -> [Program] {
                class AFrontEnd: FrontEnd {
                    var language: Language?
                    var library: Library?
                    func setData(paper: FinancialLoanClient) {
                        self.language = paper.frontendLanguage
                    }
                }

                class ABackEnd: BackEnd {
                    var server: Server?
                    var language: Language?
                    var library: Library?

                    func setData(paper: FinancialLoanClient) {
                        self.language = paper.backendLanguage
                        self.server = paper.server
                    }
                }
                let frontend = AFrontEnd()
                let backend = ABackEnd()
                frontendProgrammer = frontend
                backendProgrammer = backend
                return [
                    frontend.getProgram(paper: self),
                    backend.getProgram(paper: self)
                ]
            }
        }
        director.addProject(name: "여신", paper: FinancialLoanClient())
        director.runProject(name: "여신")
    }
}
