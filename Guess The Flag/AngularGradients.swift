//
//  AngularGradients.swift
//  Guess The Flag
//
//  Created by Karuturi Siva Rama Krishna on 17/05/25.
//

import SwiftUI

struct AngularGradients: View {
    var body: some View {
        AngularGradient(colors: [.red, .blue,.yellow,.green], center: .center)
            .ignoresSafeArea()
    }
}

#Preview {
    AngularGradients()
}
