//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Karuturi Siva Rama Krishna on 16/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Form {
                NavigationLink("LinearGradient") {
                    LinearGradient(colors: [.white,.yellow], startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    
                }
                
                NavigationLink("Radial Gradient"){
                    RadialGradientS()
                    
                }
                NavigationLink("AngularGradient") {
                    AngularGradients()
                }
                NavigationLink("SimpleGradient"){
                    SimpleGradient()
                }
                NavigationLink("MainApp"){
                    StackingUpButtons()
                }
                
            }

            
            
        }
        
        
        
        
//        RadialGradient(colors: [.blue,.green], center: .center, startRadius: 20, endRadius: 300)
//            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
