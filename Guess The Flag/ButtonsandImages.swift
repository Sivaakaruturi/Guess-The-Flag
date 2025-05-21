//
//  ButtonsandImages.swift
//  Guess The Flag
//
//  Created by Karuturi Siva Rama Krishna on 17/05/25.
//

import SwiftUI

struct ButtonsandImages: View {
    var body: some View {
        
        VStack{
            Button("Button1") { }
                .buttonStyle(.bordered)
            Button("Button2",role: .destructive) { }
                .buttonStyle(.bordered)
            
            Button("Button3"){}
                .buttonStyle(.borderedProminent)
            Button("Button4",role: .destructive){}
                .buttonStyle(.borderedProminent)
        }
        
    }
 
    func executeDeletion(){
        print("It's deleting now")
    }
}

#Preview {
    ButtonsandImages()
}
