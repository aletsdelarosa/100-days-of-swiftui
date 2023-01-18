# 100-days-of-swiftui

This Repo contains the Checkpoints and projects I made as part of 100 Days of SwiftUI by Hacking with Swift.

## Table of contents

- [100-days-of-swiftui](#100-days-of-swiftui)
  - [Table of contents](#table-of-contents)
  - [Checkpoint 1](#checkpoint-1)
  - [Checkpoint 2](#checkpoint-2)
  - [Checkpoint 3](#checkpoint-3)
  - [Checkpoint 4](#checkpoint-4)
  - [Checkpoint 5](#checkpoint-5)
  - [Checkpoint 6](#checkpoint-6)
  - [Checkpoint 7](#checkpoint-7)
  - [Checkpoint 8](#checkpoint-8)
  - [Checkpoint 9](#checkpoint-9)
  - [Project 1](#project-1)
  - [Challenge](#challenge)
  - [Project 2](#project-2)
  - [Project 3](#project-3)
  - [Project 4](#project-4)
  - [Project 5](#project-5)
  - [Project 6](#project-6)
  - [Project 7](#project-7)
  - [Project 8](#project-8)
  - [Project 9](#project-9)
  - [Project 10](#project-10)
  - [Project 11](#project-11)
  - [Project 12](#project-12)
  - [Project 13](#project-13)
  - [Project 14](#project-14)
  - [Project 15](#project-15)
  - [Project 16](#project-16)
  - [Project 17](#project-17)
  - [Project 18](#project-18)
  - [Project 19](#project-19)

## Checkpoint 1

A Swift Playground that:

1. Creates a constant holding any temperature in Celsius.
2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
3. Prints the result for the user, showing both the Celsius and Fahrenheit values.

## Checkpoint 2

This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

## Checkpoint 3

The problem is called fizz buzz, and has been used in job interviews, university entrance tests, and more for as long as I can remember. Your goal is to loop from 1 through 100, and for each number:

1. If it’s a multiple of 3, print "Fizz"
2. If it’s a multiple of 5, print "Buzz"
3. If it’s a multiple of 3 and 5, print "FizzBuzz"
4. Otherwise, just print the number.

So, here are some example values you should have when your code runs:

```swift
1 should print "1"
2 should print "2"
3 should print "Fizz"
4 should print "4"
5 should print "Buzz"
6 should print "Fizz"
7 should print "7"
…
15 should print "FizzBuzz"
…
100 should print "Buzz"
```

## Checkpoint 4

The challenge is this: write a function that accepts an integer from 1 through 10,000 and returns the integer square root of that number. That sounds easy, but there are some catches:

1. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
2. If the number is less than 1 or greater than 10,000 you should throw an "out of bounds" error.
3. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
4. If you can’t find the square root, throw a "no root" error.

This is a problem you should "brute force" – create a loop with multiplications inside, looking for the integer you were passed in.

## Checkpoint 5

With closures under your belt, it’s time to try a little coding challenge using them.

You’ve already met `sorted()`, `filter()`, `map()`, so I’d like you to put them together in a chain – call one, then the other, then the other back to back without using temporary variables.

Your input is this:

```swift
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
```

Your job is to:

1. Filter out any numbers that are even
2. Sort the array in ascending order
3. Map them to strings in the format "7 is a lucky number"
4. Print the resulting array, one item per line

So, your output should be as follows:

```swift
7 is a lucky number
15 is a lucky number
21 is a lucky number
31 is a lucky number
33 is a lucky number
49 is a lucky number
```

## Checkpoint 6

create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

## Checkpoint 7

Your challenge is this: make a class hierarchy for animals, starting with `Animal` at the top, then `Dog` and `Cat` as subclasses, then `Corgi` and `Poodle` as subclasses of `Dog`, and `Persian` and `Lion` as subclasses of `Cat`.

But there’s more:

1. The `Animal` class should have a `legs` integer property that tracks how many legs the animal has.
2. The `Dog` class should have a `speak()` method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
3. The `Cat` class should have a matching `speak()` method, again with each subclass printing something different.
4. The `Cat` class should have an `isTame` Boolean property, provided using an initializer.

## Checkpoint 8

Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, `House` and `Office`, that conform to it. Your protocol should require the following:

1. A property storing how many rooms it has.
2. A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
3. A property storing the name of the estate agent responsible for selling the building.
4. A method for printing the sales summary of the building, describing what it is along with its other properties.

## Checkpoint 9

Your challenge is this: write a function that accepts an optional array of integers, and returns one randomly. If the array is missing or empty, return a random number in the range 1 through 100.

If that sounds easy, it’s because I haven’t explained the catch yet: I want you to write your function in a single line of code. No, that doesn’t mean you should just write lots of code then remove all the line breaks – you should be able to write this whole thing in one line of code.

## Project 1

This project is a check-sharing app that calculates how to split a check based on the number of people and how much tip you want to leave. The project in itself isn’t complicated, but we’ll be taking it slow so you can see exactly how these fundamentals fit together.

![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212565116-7c5ba85f-478f-4c81-b26b-cc0ac6dd6270.png)
![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212565120-01534a28-b5ab-4153-9abd-e6eb28c32a13.png)

## Challenge

You need to build an app that handles unit conversions: users will select an input unit and an output unit, then enter a value, and see the output of the conversion.

![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212567364-d9a18ca9-a0ae-44e3-a854-3ceab0b7f030.png)
![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212567366-e49c0104-82c8-4514-bdcc-12d9f8d1be4e.png)

## Project 2

We’re going to be building a guessing game that helps users learn some of the many flags of the world.

![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212570330-39d95312-b6ac-4c03-a9c2-fe4d6f0d84d9.png)
![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212570334-5816038b-3d89-48d7-b9c9-27b1d2ef95c3.png)

![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212570367-0bf0154f-6689-4490-a646-3c3dda7030dd.png)
![Simulator Screen Shot - iPhone 14 Pro](https://user-images.githubusercontent.com/8673199/212570369-608e0b08-2455-49ae-8e12-662789c24cbc.png)

## Project 3

Challenge
One of the best ways to learn is to write your own code as often as possible, so here are three ways you should try extending this app to make sure you fully understand what’s going on:

1. Go back to project 1 and use a conditional modifier to change the tip amount text view to red if the user selects a 0% tip.
2. Go back to project 2 and replace the Image view used for flags with a new FlagImage() view that renders one flag image using the specific set of modifiers we had.
3. Create a custom ViewModifier (and accompanying View extension) that makes a view have a large, blue font suitable for prominent titles in a view.

## Project 4

This SwiftUI project is another forms-based app that will ask the user to enter information and convert that all into an alert, which might sound dull – you’ve done this already, right?

Well, yes, but practice is never a bad thing. However, the reason we have a fairly simple project is because I want to introduce you to one of the true power features of iOS development: machine learning (ML).

All iPhones come with a technology called Core ML built right in, which allows us to write code that makes predictions about new data based on previous data it has seen. We’ll start with some raw data, give that to our Mac as training data, then use the results to build an app able to make accurate estimates about new data – all on device, and with complete privacy for users.

The actual app we’re building is called BetterRest, and it’s designed to help coffee drinkers get a good night’s sleep by asking them three questions:

1. When do they want to wake up?
2. Roughly how many hours of sleep do they want?
3. How many cups of coffee do they drink per day?

Once we have those three values, we’ll feed them into Core ML to get a result telling us when they ought to go to bed. If you think about it, there are billions of possible answers – all the various wake times multiplied by all the number of sleep hours, multiplied again by the full range of coffee amounts.

## Project 5

## Project 6

## Project 7

## Project 8

## Project 9

## Project 10

## Project 11

## Project 12

## Project 13

## Project 14

## Project 15

## Project 16

## Project 17

## Project 18

## Project 19
