//
//  SimpleGradient.swift
//  Guess The Flag
//
//  Created by Karuturi Siva Rama Krishna on 17/05/25.
//

import SwiftUI

struct SimpleGradient: View {
    var body: some View {
        Text("Your Content")
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.red.gradient)
    }
}

#Preview {
    SimpleGradient()
}
