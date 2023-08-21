//
//  Musicians.swift
//  Musician
//
//  Created by Ceren Güneş on 21.08.2023.
//

import Foundation

enum Musician {
    case LeadGuitar
    case Drummer
    case Vocalist
    case Violinist
    case Bassist
}

class Musicians {
    // Properties
    var name: String
    var age: Int
    var instrument: String
    var type: Musician
    
    // initializer -> ilk degerleri atamak icin gereken fonksiyon (constructor)
    init(name: String, age: Int, instrument: String, type: Musician) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
    func sing() {
        print("Nothing else matters.")
    }
}
