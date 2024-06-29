//
//  AuthorizationView.swift
//  phoneAuth
//
//  Created by Вадим on 29.06.2024.
//

import SwiftUI

let color1 = Color(#colorLiteral(red: 0.2803416848, green: 0.1616754234, blue: 0.397572279, alpha: 1))
let color2 = Color(#colorLiteral(red: 0.4713917375, green: 0.2739529908, blue: 0.594427526, alpha: 1))
let color3 = Color(#colorLiteral(red: 0.2395575047, green: 0.130713135, blue: 0.3534936309, alpha: 1))
let color4 = Color(#colorLiteral(red: 0.3258487284, green: 0.1885058284, blue: 0.4251407087, alpha: 1))
let color5 = Color(#colorLiteral(red: 0.2175658941, green: 0.1256585419, blue: 0.2919104695, alpha: 1))

struct AuthorizationView: View {
    
    @State var textFieldText: String = "  +7 (___) ___ - __ - __"
    
    var body: some View {
        ZStack {
            color1
                .ignoresSafeArea()
            ZStack {
                loginScreenBackgroundView
                
                VStack(spacing: 16) {
                    Text("Авторизация")
                        .font(.system(size: 24))
                        .bold()
                        .padding(.top, 24)
                    
                    Image("avatar")
                        .resizable()
                        .frame(width: 96, height: 96)
                        .padding(.top, 12)
                    
                    Text("Вход по номеру телефона")
                        .font(.system(size: 16))
                        
                    TextField(
                        "",
                        text: $textFieldText
                    )
                    .frame(width: 352, height: 48)
                    .background(
                        Color.gray
                            .opacity(0.2)
                            .cornerRadius(12)
                    )
                    .font(.headline)
                    .padding(.top, 16)
                        
                    Button {
                        
                    } label: {
                        Text("Запросить код")
                            
                            .font(.system(size: 16))
                    }
                    .frame(width: 352, height: 48)
                    .background(Color.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.top, 12)
                }
            }
            .foregroundColor(.white)
        }
    }
    
    var loginScreenBackgroundView: some View {
        RoundedRectangle(cornerRadius: 28)
            .fill(
                LinearGradient(
                    gradient:
                        Gradient(colors: [Color(#colorLiteral(red: 0.1342031956, green: 0.03351112828, blue: 0.1756711602, alpha: 1)), Color(#colorLiteral(red: 0.2551369667, green: 0.1475356817, blue: 0.3486914635, alpha: 1))]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .opacity(0.8)
            .frame(width: 400, height: 429)
    }
    
}

#Preview {
    AuthorizationView()
}
