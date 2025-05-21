//
//  alert.swift
//  Guess The Flag
//
//  Created by Karuturi Siva Rama Krishna on 17/05/25.
//

import SwiftUI

struct alert: View {
    @State private var showAlert = false
    var body: some View {
        Button("Alert") {
            showAlert=true
        }
            .alert("Instructions", isPresented: $showAlert) {
                Button("Delete",role: .destructive) {}
                Button("Cancel",role: .cancel) {}
            }message: {
                Text("Please Read this")
            }
    }
}

#Preview {
    alert()
}
