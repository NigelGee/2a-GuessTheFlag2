//
//  ContentView.swift
//  GuessTheFlag2
//
//  Created by Nigel Gee on 30/10/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()

    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundColor(.secondary)
                        Text(vm.countries[vm.correctAnswer].name)
                            .font(.largeTitle.weight(.semibold))
                            .multilineTextAlignment(.center)
                    }

                    ForEach(0..<3) { number in
                        Button {
                            vm.flagTapped(number)
                        } label: {
                            Text(vm.countries[number].flag)
                                .font(.system(size: 100))
                                .padding(.horizontal, 75)
                                .background(Color.secondary)
                                .clipShape(Capsule())
                        }
                        .alert(vm.scoreTitle, isPresented: $vm.showingScore) {
                            Button("Continue", action: vm.askQuestion)
                        } message: {
                            Text(vm.scoreMessage)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))

                Spacer()
                Spacer()
                Text("Score: \(vm.score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
            }
            .padding()
            .alert("Game Over!", isPresented: $vm.showingGameOver) {
                Button("Cancel", role: .cancel) { }
                Button("Restart", role: .destructive, action: vm.reset)
            } message: {
                Text("Score \(vm.score) of \(vm.count)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
