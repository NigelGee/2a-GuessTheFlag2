//
//  ContentViewModel.swift
//  GuessTheFlag2
//
//  Created by Nigel Gee on 31/10/2021.
//

import Foundation

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var countries = Country.countries.shuffled()
        @Published var correctAnswer = Int.random(in: 0...2)
        @Published var score = 0
        @Published var count = 1
        @Published var scoreTitle = ""
        @Published var scoreMessage = ""
        @Published var showingScore = false
        @Published var showingGameOver = false

        func flagTapped(_ number: Int) {
            let needThe = ["United Kingdom", "United States", "Netherlands", "European Union", "British Indian Ocean Territory", "Turks & Caicos Islands"]
            if number == correctAnswer {
                score += 1
                scoreTitle = "Correct"
            } else {
                scoreTitle = "Wrong"
            }

            count += 1

            if needThe.contains(countries[number].name) {
                scoreMessage = "This is the flag of the \(countries[number].name)"
            } else {
                scoreMessage = "This is the flag of \(countries[number].name)"
            }
            showingScore = true
        }

        func askQuestion() {
            countries.remove(at: correctAnswer)
            if count < 10 {
                countries.shuffle()
                correctAnswer = Int.random(in: 0...2)
            } else {
                showingGameOver = true
            }
        }

        func reset() {
            score = 0
            count = 1
            countries = Country.countries.shuffled()
            askQuestion()
        }
    }
}
