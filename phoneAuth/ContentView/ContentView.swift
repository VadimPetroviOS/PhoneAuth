//
//  ContentView.swift
//  phoneAuth
//
//  Created by Вадим on 07.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(
            gradient:
                Gradient(colors: Constants.backgroundColor),
            startPoint: .topTrailing,
            endPoint: .bottomLeading
        )
        .ignoresSafeArea()
    }
}

private enum Constants {
    static let backgroundColor = [Color(#colorLiteral(red: 0.280854702, green: 0.1572261453, blue: 0.397690475, alpha: 1)), Color(#colorLiteral(red: 0.4826056361, green: 0.2909101248, blue: 0.5895795226, alpha: 1)), Color(#colorLiteral(red: 0.280854702, green: 0.1572261453, blue: 0.397690475, alpha: 1)), Color(#colorLiteral(red: 0.4826056361, green: 0.2909101248, blue: 0.5895795226, alpha: 1)), Color(#colorLiteral(red: 0.280854702, green: 0.1572261453, blue: 0.397690475, alpha: 1))]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
