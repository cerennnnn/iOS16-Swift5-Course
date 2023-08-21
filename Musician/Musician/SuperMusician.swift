//
//  SuperMusician.swift
//  Musician
//
//  Created by Ceren Güneş on 21.08.2023.
//

import Foundation

class SuperMusician: Musicians {
    override func sing() {
        super.sing()
        print("exit light")
    }
}

/*
 Access levels
 
 private -> hangi sinifta tanimlandiysa orda kullanilir.
 fileprivate -> hangi dosya icinde tanimliysa orda kullanilir.
 internal -> default deger.
 public -> baska yerlerden ulasilabilir fakat icerigi degistirilemez.
 open -> dosyalarima metodlarima herkes ulasabilir ve degisiklik yapabilir.
 
 */
