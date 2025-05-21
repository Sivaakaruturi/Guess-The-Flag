//
//  RadialGradient.swift
//  Guess The Flag
//
//  Created by Karuturi Siva Rama Krishna on 17/05/25.
//

import SwiftUI

struct RadialGradientS: View {
    var body: some View {
        RadialGradient(colors: [.blue,.green], center: .center, startRadius: 20, endRadius: 200)
            .ignoresSafeArea()
    }
}

#Preview {
    RadialGradientS()
}
