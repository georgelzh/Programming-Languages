/* Creating game equipment for a game using protocol
File name: dragon_fighter.swift
*/


protocol Equipment {
    var name: String { get }
    var defense: Int {get }
    var attack: Int { get }
    var description: String { get }

    mutating func adjust()
}

struct beginnerSword: Equipment {
    var name: String = "Beginner Sword"
    var defense: Int = 0
    var attack: Int = 15
    var description: String = "This is a beginner sword. Every dragon fighter started with it."

    func adjust() {}
}


struct beginnerJacket: Equipment {
    var name: String = "Beginner Jacket"
    var defense: Int = 25
    var attack: Int = 0
    var description: String = "This is a beginner jacket. Every dragon fighter started with it."

    func adjust() {}
}

class Player {
    var name: String
    var attack: Int = 10
    var defense: Int = 15
    var equipOne: beginnerJacket

    init(name: String, equipOne: beginnerJacket) {
        self.name = name
        self.equipOne = equipOne
    }

    func update() {
            self.attack += (self.equipOne).attack
            self.defense += (self.equipOne).defense
    }

    func getAttackInfo() -> Int {
        return self.attack
    }
    
    func getDefenseInfo() -> Int {
        return self.defense
    }

    func getDescription() -> String {
        return "This is a dragon fighter whose name is: \"\(self.name)\""
    }
}

//test the jacket
let testJacket = beginnerJacket()
print(testJacket.description)

//test the the player wearing a jacket.
var newPlayer = Player(name: "Boby", equipOne: testJacket)
newPlayer.update()
print(newPlayer.getAttackInfo())
print(newPlayer.getDefenseInfo())
print(newPlayer.getDescription())


//https://teamtreehouse.com/community/whats-the-difference-between-a-struct-and-a-class-in-swift