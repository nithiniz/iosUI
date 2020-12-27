//
//  program.swift
//  iOSUI
//
//  Created by Nithin Nizam on 11/11/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import Foundation


/*

 git clone <url>
 Desktop $: git clone https://github.com/nithiniz/iosUI.git
 Desktop $: cd iosUI
 iosUI $:

 git status // gives the difference between the current code and local git version
            3 sections -
                    Changes staged for commit - Files knowm by git that are ready for commit (Section 1)
                    Changes not staged for commit - Files known by git, but not going to be commited (Section 2)
                    Untracked files - Files that are unknown to git within the git folder (Section 3)
 git add <file path> //adds the file to section 1 from section 2 and 3
 git restore --staged //Moves a file from section 1 to section 2 or 3 based on the last status
 git commit -m "message" //Commits the files in section 1

 git commit -am // commits all tracked files
 git commit -am "updated 2 files"

 git add file2.txt
 git add fileForNewBranch.txt

 git commit -m "updated 2 files" //commits only the selected/added files

 git push origin <branch name> //Pushes the changes to the specified branch
 git pull origin <branch name> //Pulls the changes from the specified branch

 git stash //Removes all local changes and goes back to last git version/commit
 git stash pop //Brings back the changes from previous stash

 git branch <branch name> //create a branch
 git checkout <branch name> //switch to a branch

 git checkout -b <branch name> //creates a new branch and switch to it
 git checkout <commit id> // moves to a particular commit, will not be in a branch
 git branch -D <branch name> //Deletes a branch on local repository

{
 git rebase <branch name>

 git status -> make sure working tree is clean
 git checkout master -> switch to your base branch
 git pull origin master -> pull changes from remote for your base branch
 git checkout <your branch> -? switch back to your branch
 git rebase master

// if conflict
 git mergetool
 <return>
 fix conflict -> save merge - quit file merge
 git rebase --continue
 //

 git push -f origin branch1

 }
 */


struct Pipe {
    let name: String
    let length: Float
//    var type: Character
//    var possible: Bool
}

struct PipesList{
    let pipeType: String
    var pipes: [Pipe]
}

struct WebSearchDucIDs {

    let webSearchResponse = "webSearchDucs#webSearchResponse"
}

class Program {


//    let classNew = NewClass()
//    let string = classNew.applicationOne

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
  //  let sportsArray = [SportsDucIDs.leagueScheduleComment, teamGameScheduleComent]

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
  //      classNew.appTest()
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
//addNewOne()
        _ = Program().addNewOne()

    }

    
    func addNewOne() -> String {
        return ""
    }
    
    
    func removeTheSmallPipes(pipesList: inout [PipesList]){

        var index = 0
        for var pipeTypes in pipesList
        {
            var newPipes = [Pipe]()
            for pipe in pipeTypes.pipes {
                if pipe.length >= 19.0
                {
                    newPipes.append(pipe)
                }
            }

            pipeTypes.pipes = newPipes
            pipesList[index] = pipeTypes
            index += 1
        }
    }


}

/*

 some text from branch 2

 some text from branch 1

 some text from branch 2
 some text from branch 1

 some text from branch 1
 some text from branch 2

neither
 */
