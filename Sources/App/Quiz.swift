//
//  Derp.swift
//  App
//
//  Created by Eric Jacobsen on 10/1/18.
//

import Vapor
import Command

struct QuizCommand: Command {
    
    var arguments: [CommandArgument] { return [] }
    
    var options: [CommandOption] { return [
        .value(name: "answer", short: "a", default: "one")
    ]}
    var help: [String] {
        return ["How many fingers am I holding up?"]
    }
    
    func run(using context: CommandContext) throws -> Future<Void> {
        let answer = context.options["answer"]

        switch answer {
        case "one" : print("better not be the middle one")
        case "two" : print("peace be with you")
        case "three" : print("moshi moshi")
        case "four" : print("nobody picks four")
        case "five" : print("hello to you too")
        default : print("Wait.")
        }
        
        return .done(on: context.container)
    }
    
}
