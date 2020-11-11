//
//  program.swift
//  iOSUI
//
//  Created by Nithin Nizam on 11/11/20.
//  Copyright © 2020 Nithin. All rights reserved.
//

import Foundation
struct Pipe{
    let name: String
    let length: Float
}

struct PipesList{
    let pipeType: String
    var pipes: [Pipe]
}

class Program{

    init(){

        var pipeTypes: [PipesList] = [

            PipesList(pipeType: "PVC Pipes",pipes: [
                Pipe(name: "The blue pipe", length: 12),
                Pipe(name: "The red pipe", length: 15),
                Pipe(name: "The silver pipe", length: 6),
                Pipe(name: "The green pipe", length: 52)
            ]),

            PipesList(pipeType: "Iron Pipes",pipes: [
                Pipe(name: "The gold pipe", length: 9),
                Pipe(name: "The orange pipe", length: 115),
                Pipe(name: "The pink pipe", length: 1),
            ]),

            PipesList(pipeType: "Chrome Pipes",pipes: [
                Pipe(name: "The grey pipe", length: 12),
                Pipe(name: "The black pipe", length: 15),
                Pipe(name: "The white pipe", length: 19),
                Pipe(name: "The brown pipe", length: 60),
                Pipe(name: "The peach pipe", length: 16)
            ])
        ]

        removeTheSmallPipes(pipesList: &pipeTypes)

        for pipeList in pipeTypes{
            print("PipesList: \(pipeList.pipeType)")

            for pipe in pipeList.pipes{
                print("\(pipe.name), length: \(pipe.length)")
            }
        }


    }

    func removeTheSmallPipes(pipesList: inout [PipesList]){

        for var pipeTypes in pipesList
        {
            var index = 0
        var pipes = pipeTypes.pipes
            for pipe in pipes {
                if pipe.length < 19.0
                {
                    pipes.remove(at: index)

               }
        index += 1

            }
        pipeTypes.pipes = pipes
        }
    }


}

