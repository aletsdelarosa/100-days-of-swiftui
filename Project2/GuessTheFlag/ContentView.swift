//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Alets on 1/15/23.
//

import SwiftUI

struct FlagImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .shadow(radius: 5)
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title.weight(.semibold))
            .foregroundColor(.primary)
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    @State private var countries = [
        "Estonia",
        "France",
        "Germany",
        "Ireland",
        "Italy",
        "Nigeria",
        "Poland",
        "Russia",
        "Spain",
        "UK",
        "US"
    ].shuffled()
    @State private var correctAnswer = Int.random(in: 0..<3)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var tappedFlagIndex = -1
    
    var body: some View {
        ZStack {
            VStack(spacing: 15) {
                VStack {
                    Text("Tap the flag of")
                        .titleStyle()
                    Text(countries[correctAnswer])
                        .font(.title2)
                        .foregroundStyle(.secondary)
                }
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        FlagImageView(imageName: countries[number])
                    }
                }
                HStack {
                    Text("Score: \(score)")
                        .font(.callout)
                }
                .padding(.top)
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Reset", role: .destructive, action: reset)
            Button("Continue", role: .cancel, action: askQuestion)
        } message: {
            Text("Your score is: \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
        }

        showingScore = true
    }
    
    func askQuestion() {
        tappedFlagIndex = -1
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func reset() {
        tappedFlagIndex = -1
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
