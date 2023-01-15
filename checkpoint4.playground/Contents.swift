enum SqrtError: Error {
    case outOfBounds
    case noRoot
}

func calculateIntegerSqrt(of number: Int) throws -> Int {
    
    if number < 1 && number > 10_000 {
        throw SqrtError.outOfBounds
    }
    
    for possibleSqrt in 1...100 {
        if number == possibleSqrt * possibleSqrt {
            return possibleSqrt
        }
    }
    
    throw SqrtError.noRoot
}

do {
    try calculateIntegerSqrt(of: 0)
} catch let error {
    print(error)
}

do {
    try calculateIntegerSqrt(of: 1)
} catch let error {
    print(error)
}

do {
    try calculateIntegerSqrt(of: 4)
} catch let error {
    print(error)
}

do {
    try calculateIntegerSqrt(of: 6)
} catch let error {
    print(error)
}

do {
    try calculateIntegerSqrt(of: 10_000)
} catch let error {
    print(error)
}

do {
    try calculateIntegerSqrt(of: 11_000)
} catch let error {
    print(error)
}
