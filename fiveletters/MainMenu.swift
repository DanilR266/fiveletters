//
//  ContentView.swift
//  fiveletters
//
//  Created by Данила on 17.11.2022.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        ZStack {
            CircleImage()
            VStack(spacing: 203) {
                Text("Привет! Это уркаденная у Тинькофф игра “5 букв”")
                    .fontWeight(.regular)
                    .font(.system(size: 28))
                    .multilineTextAlignment(.center)
                VStack(spacing: 58) {

                    Button(action: {
                            print("sign up bin tapped")
                        }) {
                            Text("Играть")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .font(.system(size: 28, weight: .bold, design: .default))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 3)
                            )
                        }
                        .background(Color.white) // If you have this
                        .cornerRadius(15)
                        .frame(width: 252, height: 54, alignment: .center)
                    Button(action: {
                            print("sign up bin tapped2")
                        }) {
                            Text("Правила")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .font(.system(size: 28, weight: .bold, design: .default))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 3)
                            )
                        }
                        .background(Color.white) // If you have this
                        .cornerRadius(15)
                        .frame(width: 252, height: 54, alignment: .center)

                }
                .padding(.bottom, 260)

            }
            
            
        }

    }
}

struct CircleImage: View {
    var body: some View {
        Image("Subtract")
            .resizable()
            .frame(width: 91, height: 242, alignment: .leading)
            .clipped()
            .offset(x: 150, y: -200)
        Image("Subtract-2")
            .resizable()
            .frame(width: 152, height: 252, alignment: .leading)
            .clipped()
            .offset(x: -119, y: -120)
        Image("Subtract-3")
            .resizable()
            .frame(width: 94, height: 243, alignment: .leading)
            .clipped()
            .offset(x: -150, y: 240)
        Image("Subtract-4")
            .resizable()
            .frame(width: 179, height: 252, alignment: .leading)
            .clipped()
            .offset(x: 107, y: 220)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
