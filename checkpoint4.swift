func calculateIntegerSqrt(of number: Int) throws -> Int {
    throws Error("out of bounds")

    for possibleSqrt in 1...100 {
        if number == possibleSqrt * possibleSqrt {
            return possibleSqrt
        }
    }

    throws Error("no root")
}

calculateIntegerSqrt(of: 0)
calculateIntegerSqrt(of: 1)
calculateIntegerSqrt(of: 4)
calculateIntegerSqrt(of: 6)
calculateIntegerSqrt(of: 10_000)
calculateIntegerSqrt(of: 11_000)