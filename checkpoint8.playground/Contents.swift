protocol Building {
    var numberOfRooms: Int { get set }
    var cost: Int { get set }
    var realStateAgent: String { get set }
    func getSaleSummary() -> String
}

class House: Building {
    var numberOfRooms: Int
    
    var cost: Int
    
    var realStateAgent: String
    
    init(numberOfRooms: Int, cost: Int, realStateAgent: String) {
        self.numberOfRooms = numberOfRooms
        self.cost = cost
        self.realStateAgent = realStateAgent
    }
    
    func getSaleSummary() -> String {
        return "Agent: \(self.realStateAgent), price: \(self.cost), number of rooms: \(self.numberOfRooms)"
    }
}

class Office: Building {
    var numberOfRooms: Int
    
    var cost: Int
    
    var realStateAgent: String
    
    init(numberOfRooms: Int, cost: Int, realStateAgent: String) {
        self.numberOfRooms = numberOfRooms
        self.cost = cost
        self.realStateAgent = realStateAgent
    }
    
    func getSaleSummary() -> String {
        return "Agent: \(self.realStateAgent), price: \(self.cost), number of rooms: \(self.numberOfRooms)"
    }
}
