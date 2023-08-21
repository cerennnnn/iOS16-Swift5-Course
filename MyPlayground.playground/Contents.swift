import UIKit

// shift + enter -> run

// iOS programlamada camelCase kullanilir.

// Variables & Constants
// 'var' ile degisken 'let' ile sabit taninir.

var userName = "James"
print(userName)

var userSurname = "Hetfield"

userName = "Lars"
print(userName)

// Int
let userAge = 50
let myNumber = 4
userAge / myNumber

// Double
let pi = 3.14
let userAgeD = 50.0
let myNumberD = 4.0
userAgeD / myNumberD

// Farkli degisken tipleri arasinda islem yapilmaz, ornegin string ile int carpilmaz.

// String -> metinler
userName.lowercased()
userName.uppercased()

// Bool
var myBoolean = false
myBoolean = true


// Degiskenleri tanimlamadan onceden tipini belirleme
var myString: String = "50"
let anotherNumber: Int = Int(10.5) // 10.5'in tam kismini alir.
let stringNumber: String

// Sinif, struct, enum tanimlanirken buyuk harfle baslanir.

// initialization
// stringNumber'i tanimladik ama initialize etmedik(ilk deger atamadik.)
stringNumber = "Test"
stringNumber.uppercased()

// immutable -> degistirilemez, mutable -> degistirilebilir


// Diziler
// Birden fazla degiskeni bir arada tutmamiza yarayan yapi.
// Veriler sirali olarak tutulur.
// Ayni tip degiskenler tutulur.
var myFavoriteMovies = ["Pulp Fiction", "Kill Bill", "Reservoir Dogs"]

// as -> casting(tur donusumu)

// eger yukaridaki dizinin icine string'ten baska bir degisken koymak isteseydik soyle yapardik:
var myFavoriteMovies2 = ["Pulp Fiction", "Kill Bill", "Reservoir Dogs", 5, true] as [Any]

// Any Object -> Her turu icerebilen bir tur.
myFavoriteMovies[0]

var myStringArray = ["Test", "Test2", "Test3"]
myStringArray[0].uppercased()
myStringArray.count
myStringArray[myStringArray.count - 1]

var myNumberArray = [5, 7, 1, 2, 9, 4, 2]
myNumberArray.sort()

// Set
// indexleme yok, icinde ayni elemandan yalnizca 1 tane bulunur.
// verileri sirasiz tutar.(unordered collection)

var mySet: Set = [1, 2, 4, 4]
mySet.first

// collection types = iclerinde birden fazla degisken tutan yapilar.
// array, set, dictionary collection type'dir.

var myStringSet: Set = ["a", "b", "c", "a", "b"]

let mySet1: Set = [1, 2, 3]
let mySet2: Set = [3, 4, 5]
let mySet3: Set = mySet1.union(mySet2) // iki set'i birlestirip mySet3'e ata.

// Dictionary
// key-value pairs tutar.
// unordered sekilde verileri tutar.
var myFavoriteDirectors = [
    "Pulp Fiction": "Tarantino",
    "Lock, Stock": "Guy Ritchie",
    "The Dark Knight": "Christopher Nolan"
]

myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino"
myFavoriteDirectors["Seven Samurai"] = "Akira Kurisowa"

print(myFavoriteDirectors)

var myDictionary = ["Run": 100, "Swim": 200, "Basketball": 300]
myDictionary["Run"]

// Donguler -> Bir islemi belli bir kosul karsiliginda devamli olarak yapmamizi saglayan bir yapi.

var myNumber2 = 1
myNumber2 = myNumber2 + 1
myNumber2 += 1

var number = 0

// While Loop
while number < 20 {
    print(number)
    number += 1
}

var characterAlive = true
while characterAlive {
    print("Character alive.")
    characterAlive = false
}

// For Loop
var myFruitArray = ["Apple", "Pear", "Grape"]

for fruit in myFruitArray {
    print(fruit)
}

var myNumbers = [10, 20, 30, 40, 50, 60]
for number in myNumbers {
    print(number / 5)
}

for myInteger in 1...5 {
    print(myInteger * 5)
}

// If Kontrolleri
var myAge = 30

if myAge > 30 {
    print("30'dan buyuk")
} else if myAge > 30 && myAge < 40 {
    print("30-40 arasinda.")
} else {
    print("30'dan kucuk")
}

// AND
4 < 5 &&  8 < 7

// OR
4 < 5 ||  8 < 7

// Fonksiyonlar
func myFunction() {
    print("my function")
}

myFunction()

// Input & Output & Return
func sumFunction(x: Int, y: Int) -> Int {
    x + y
}

var sumFunctionVarible = sumFunction(x: 2, y: 5)
print(sumFunctionVarible)

// Optionals
var myName: String = "James"
myName.uppercased()

// initialize edilmemis degiskenleri kullanirsak iclerinde nil vardir ve kod coker.

var myOptionalString: String?
myOptionalString?.uppercased()

var myAge2 = "f"
var myInteger = (Int(myAge2))

// Optional unwrapping
if let myInteger {
    print(myInteger * 5)
} else {
    print("wrong input")
}
