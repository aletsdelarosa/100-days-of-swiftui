//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Alets on 1/15/23.
//

import SwiftUI

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
    
    var body: some View {
        ZStack {
            VStack(spacing: 15) {
                VStack {
                    Text("Tap the flag of")
                        .font(.title.weight(.semibold))
                    Text(countries[correctAnswer])
                        .font(.title2)
                        .foregroundStyle(.secondary)
                }
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            .shadow(radius: 5)
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
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func reset() {
        score = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
