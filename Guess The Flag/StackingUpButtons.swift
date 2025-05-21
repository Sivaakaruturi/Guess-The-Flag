//
//  StackingUpButtons.swift
//  Guess The Flag
//
//  Created by Karuturi Siva Rama Krishna on 17/05/25.
//

import SwiftUI

struct StackingUpButtons: View {
    @State private var countries = ["Estonia","France","Germany","Ireland","Italy","Monaco","Nigeria","Poland","Spain","UK","Ukraine","US"].shuffled()
    @State private var correctAnswer = Int.random(in:0...2)
    @State private var showScore = false
    @State private var scoreTitle: String = ""
    @State private var scoreCount = 0
    
    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 300, endRadius: 600)
                .ignoresSafeArea()
            VStack{
                Text("Guess The Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack (spacing:15){
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3){number in
                        Button{
                            flagTapped(number)
                        }label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                    
                    
                }.frame(maxWidth: .infinity)
                    .padding(.vertical,20)
                    .background(.regularMaterial)
                    .clipShape(.rect(cornerRadius: 20))
                    .padding()
                
                
                Text("Score:\(scoreCount)")
                    .foregroundStyle(.white)
                    .font(.title2.bold())
                
            }
        }.alert(scoreTitle, isPresented: $showScore) {
            Button("Continue",action: askQuestion)
            
        }message: {
            Text("Your Score is\(scoreCount)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            scoreCount+=1
        }
        else{
            scoreTitle = "Wrong"
        }
        showScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in:0...2)
    }
}

#Preview {
    StackingUpButtons()
}
