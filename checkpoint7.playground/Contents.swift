class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() -> String {
        preconditionFailure("This method needs to be overriden")
    }
}

class Dog: Animal {
    override func speak() -> String {
        return "woof woof"
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        
        super.init(legs: legs)
    }
    
    override func speak() -> String {
        return "miau"
    }
}

class Corgi: Dog {
    override func speak() -> String {
        return "woof"
    }
}

class Poodle: Dog {
    override func speak() -> String {
        return "woof woof woof"
    }
}

class Persian: Cat {
    override func speak() -> String {
        return "miau miau"
    }
}

class Lion: Cat {
    override func speak() -> String {
        return "miau miau miau"
    }
}
