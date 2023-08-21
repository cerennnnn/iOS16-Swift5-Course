//
//  main.swift
//  Musician
//
//  Created by Ceren Güneş on 21.08.2023.
//

import Foundation

let james = Musicians(name: "James Hedtfield", age: 50, instrument: "Guitar", type: .Vocalist)

print(james.type)
james.sing()

let kirk = SuperMusician(name: "Kirk", age: 55, instrument: "Guitar", type: .LeadGuitar)
kirk.sing()
