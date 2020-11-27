//
//  program.swift
//  iOSUI
//
//  Created by Nithin Nizam on 11/11/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import Foundation


/*

 git status
 git add
 git restore
 git restore --staged
 git branch
 git checkout
 git checkout -b <branch name>
 git checkout <commit id>
 git stash
 git stash pop
 git commit -m
 git commit -am
 git push origin <branch name>
 git pull origin <branch name>
 

 */


struct Pipe {
    let name: String
    let length: Float
    var type: Character
    var possible: Bool
}

struct PipesList {
    let pipeType: String
    var pipes: [Pipe]
}

struct WebSearchDucIDs {

    let webSearchResponse = "webSearchDucs#webSearchResponse"
}

class Program {


    let classNew = NewClass()
    let string = classNew.applicationOne

    func testSiri() {

      //  let utterance = "nascar schedule"    // "nascar schedule"
//        let utterance: String? = "nascar schedule" // "Optional(nascar schedule)"
//
//        TestCaseStartState.ask(self,
//                               utterance: utterance ?? "",
//                               validate:(allOf: [WebSearchDucIDs.webSearchResponse]),
//                               skipValidateSnippet(),
//                               done())
//
//        TestCaseStartState.ask(self,
//                               utterance: "nascar schedule",
//                               validate:(allOf: ["webSearchDucs#webSearchResponse"]),
//                               skipValidateSnippet(),
//                               done())
    }

    let string = "1.0"

    var anotherString = "new string"
    let array: [Any] = ["string", 10, 11.5]
    let array1: [Int] = [1, 2, 3]
    var newPipe = Pipe(name: "Raja", length: 2.2)
    var listOfIntegers: [Int]?

    var optionalString: String?
    let sportsArray = [SportsDucIDs.leagueScheduleComment, teamGameScheduleComent]

    required init(_ someString: String) {

        optionalString = someString
        listOfIntegers?.append(1)
        listOfIntegers?.append(2)
        listOfIntegers?.append(3)

        print(array)
        print(listOfIntegers)
        print(listOfIntegers!)

        var unwrapped = optionalString!
        unwrapped = optionalString ?? "default value"
        if let abc = optionalString {
            print(abc)
        }
        if optionalString == nil {
            unwrapped = "default value"
        }
        else {
            unwrapped = optionalString!
        }
        // "Optional(1,2,3)"
        //  "1,2,3"
    }

    func calculate(){

        anotherString = "changed string"
        print(optionalString) // -> Optional(nil)
        classNew.appTest()
        /*
         unwrap

         forceful
         conditional
         */
      //  print(optionalString!) // -> crash

        // optionalString = "new"

        print(optionalString ?? anotherString)

        if let unwrapped = optionalString {
            print(unwrapped)
        }

        let firstItem = PipesList(pipeType: "PVC Pipes",pipes: [
            Pipe(name: "The blue pipe", length: 12),
            Pipe(name: "The red pipe", length: 15),
            Pipe(name: "The silver pipe", length: 6),
            Pipe(name: "The green pipe", length: 52)
        ])
        let secondItem =  PipesList(pipeType: "Iron Pipes",pipes: [
            Pipe(name: "The gold pipe", length: 9),
            Pipe(name: "The orange pipe", length: 115),
            Pipe(name: "The pink pipe", length: 1),
        ])
        let thirdItem = PipesList(pipeType: "Chrome Pipes",pipes: [
            Pipe(name: "The grey pipe", length: 12),
            Pipe(name: "The black pipe", length: 15),
            Pipe(name: "The white pipe", length: 19),
            Pipe(name: "The brown pipe", length: 60),
            Pipe(name: "The peach pipe", length: 16)
        ])

       let newPipelist: PipesList = PipesList(pipeType: "some type", pipes: [Pipe(name: "pipe name", length: 10), Pipe(name: "another pipe", length: 12
        )])

        var pipeTypes: [PipesList] = [firstItem, secondItem, thirdItem, newPipelist]

        removeTheSmallPipes(pipesList: &pipeTypes)

        for pipeList in pipeTypes{
            print("PipesList: \(pipeList.pipeType)")

            for pipe in pipeList.pipes{
                print("\(pipe.name), length: \(pipe.length)")
            }
        }


    }

    func removeTheSmallPipes(pipesList: inout [PipesList]){

        for var pipeTypes in pipesList {
            var index = 0
            var pipes = pipeTypes.pipes
            for pipe in pipes {
                if pipe.length < 19.0 {
                    pipes.remove(at: index)

                }
                index += 1

            }
            pipeTypes.pipes = pipes
        }
    }


}

