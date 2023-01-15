func getRandomNumber(from options: [Int]?) -> Int {
    return options?.randomElement() ?? Int.random(in: 1...100)
}

getRandomNumber(from: nil)

getRandomNumber(from: [1,2,3,45,6,7])
