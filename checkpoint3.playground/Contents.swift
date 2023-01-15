for number in 1...100 {
    var textToPrint = ""

    if number.isMultiple(of: 3) {
        textToPrint = "Fizz"
    }

    if number.isMultiple(of: 5) {
        textToPrint += "Buzz"
    }

    if(textToPrint == "") {
        textToPrint = "\(number)"
    }

    print(textToPrint)
}
