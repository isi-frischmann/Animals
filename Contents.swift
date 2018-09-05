//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

class Animal {
//    create the properties
    let name: String
    var health: Int = 100
    
//    create the initalizer for the property name
    init(name: String){
        self.name = name
    }
    
//    create a method to show the health
    func displayHealth() {
        print("This creature is \(self.name) and has \(self.health) health points")
    }
}

//create a subclass from the Animal
class Cat: Animal {
//    modify the health for the cat. Super.init calls the init method from the Animal class
//    Use override to override the init method from the Animal class
    override init(name:String) {
        super.init(name: name)
        self.health = 150
    }
    
//create a method growl
    func growl() {
        print("RAWR!!!!")
    }
    
//    create a function to let the cat run
    func run() {
        self.health += 10
        print("RUN RUN - And that's the new health")
    }
}

class Cheetah: Cat {
    override init(name: String) {
        super.init(name: name)
    }
    
    override func run(){
        self.health -= 50
        print("Running Fast")
    }
    
    func sleep() {
        print("Sleeping cat")
        if self.health < 200 {
            self.health += 50
        }
    }
}

class Lion: Cat {
    override init(name: String) {
        super.init(name: name)
        self.health = 200
    }

    override func growl() {
        print("ROARRRRRR!!! I'm the King in the Jungle")
    }
}

var cat1: Cheetah = Cheetah(name: "Cheetah")
cat1.run()
cat1.run()
cat1.displayHealth()
cat1.sleep()
cat1.sleep()
cat1.displayHealth()

